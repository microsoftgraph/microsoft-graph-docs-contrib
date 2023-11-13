---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/users/0f933635-5b77-4cf4-a577-f78a5eb090a2",
)

await graph_client.directory_roles.by_directory_role_id('directoryRole-id').members.ref.post(request_body)


```