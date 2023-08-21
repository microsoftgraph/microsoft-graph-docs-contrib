---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Message()
request_body.subject = 'subject-value'

body = ItemBody()
body.contenttype(BodyType.Text('bodytype.text'))

body.content = 'content-value'


request_body.body = body
request_body.inferenceclassification(InferenceClassificationType.Other('inferenceclassificationtype.other'))




result = await client.me.messages.by_message_id('message-id').patch(request_body = request_body)


```