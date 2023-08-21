---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthoredNote()
content = ItemBody()
content.content = 'String'

content.contenttype(BodyType.Text('bodytype.text'))


request_body.content = content



result = await client.privacy.subject_right_requests.by_subject_right_request_id('subjectRightsRequest-id').notes.post(request_body = request_body)


```