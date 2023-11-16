---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignLicensePostRequestBody(
	add_licenses = [
	],
	remove_licenses = [
		UUID("c7df2760-2c81-4ef7-b578-5b5392b571df"),
		UUID("b05e124f-c7cc-45a0-a6aa-8cf78c946968"),
	],
)

result = await graph_client.groups.by_group_id('group-id').assign_license.post(request_body)


```