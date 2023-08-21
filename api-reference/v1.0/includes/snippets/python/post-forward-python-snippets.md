---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardPostRequestBody()
request_body.comment = 'comment-value'

to_recipients_recipient1 = Recipient()
to_recipients_recipient1email_address = EmailAddress()
to_recipients_recipient1email_address.name = 'name-value'

to_recipients_recipient1email_address.address = 'address-value'


to_recipients_recipient1.email_address = to_recipients_recipient1email_address

toRecipientsArray []= toRecipientsRecipient1;
request_body.torecipients(toRecipientsArray)





await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').posts.by_post_id('post-id').forward.post(request_body = request_body)


```