from django.core.mail import EmailMultiAlternatives
from django.conf import settings
from django.core.urlresolvers import reverse
from django.utils.html import strip_tags

from djangobb_forum import settings as forum_settings
from djangobb_forum.util import absolute_url

if "mailer" in settings.INSTALLED_APPS:
    from mailer import send_mail
else:
    from django.core.mail import send_mail
    def send_mail(subject, text, from_email, rec_list, html=None):
        """
        Shortcut for sending email.
        """
    
        msg = EmailMultiAlternatives(subject, text, from_email, rec_list)
        if html:
            msg.attach_alternative(html, "text/html")
        if forum_settings.EMAIL_DEBUG:
            print '---begin---'
            print 'To:', rec_list
            print 'Subject:', subject
            print 'Body:', text
            print '---end---'
        else:
            msg.send(fail_silently=True)


# TODO: move to txt template
TOPIC_SUBSCRIPTION_TEXT_TEMPLATE = (u"""New reply from %(username)s to topic that you have subscribed on.
---
%(message)s
---
See topic: %(post_url)s
Unsubscribe %(unsubscribe_url)s""")


def notify_topic_subscribers(post):
    topic = post.topic
    post_body_text = strip_tags(post.body_html)
    if post != topic.head:
        for user in topic.subscribers.all():
            if user != post.user:
                subject = u'RE: %s' % topic.name
                to_email = user.email
                text_content = TOPIC_SUBSCRIPTION_TEXT_TEMPLATE % {
                        'username': post.user.username,
                        'message': post_body_text,
                        'post_url': absolute_url(post.get_absolute_url()),
                        'unsubscribe_url': absolute_url(reverse('forum_delete_subscription', args=[post.topic.id])),
                    }
                #html_content = html_version(post)
                send_mail(subject, text_content, settings.DEFAULT_FROM_EMAIL, [to_email])
