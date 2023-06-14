---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SubjectRightsRequest()
request_body.@odata_type = '#microsoft.graph.subjectRightsRequest'

request_body.internalDueDateTime = DateTime('2021-08-30T00:00:00Z')




result = await client.privacy.subject_right_requests.by_subject_right_request_id('subjectRightsRequest-id').patch(request_body = request_body)


```