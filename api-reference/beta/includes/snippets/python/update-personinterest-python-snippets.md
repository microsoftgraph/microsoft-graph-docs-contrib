---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PersonInterest(
	categories = [
		"Sports",
	]
)

result = await graph_client.me.profile.interests.by_interest_id('personInterest-id').patch(body = request_body)


```