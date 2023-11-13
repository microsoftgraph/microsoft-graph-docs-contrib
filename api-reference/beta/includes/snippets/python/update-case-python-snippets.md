---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Case(
	display_name = "My Case 1 - Renamed",
	description = "Updated description",
	external_id = "Updated externalId",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').patch(request_body)


```