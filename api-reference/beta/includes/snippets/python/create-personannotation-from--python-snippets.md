---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonAnnotation()
detail = ItemBody()
detail.contenttype(BodyType.Text('bodytype.text'))

detail.content = 'I am originally from Australia, but grew up in Moscow, Russia.'


request_body.detail = detail
request_body.display_name = 'About Me'




result = await client.me.profile.notes.post(request_body = request_body)


```