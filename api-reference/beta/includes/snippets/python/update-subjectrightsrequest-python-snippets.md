---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SubjectRightsRequest(
	odata_type = "#microsoft.graph.subjectRightsRequest",
	internal_due_date_time = "2021-08-30T00:00:00Z",
)

result = await graph_client.privacy.subject_right_requests.by_subject_right_request_id('subjectRightsRequest-id').patch(body = request_body)


```