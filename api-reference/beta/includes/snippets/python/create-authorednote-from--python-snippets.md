---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AuthoredNote(
	content = ItemBody(
		content = "Please take a look at the files tagged with follow up",
		content_type = BodyType.Text,
	),
)

result = await graph_client.privacy.subject_right_requests.by_subject_right_request_id('subjectRightsRequest-id').notes.post(body = request_body)


```