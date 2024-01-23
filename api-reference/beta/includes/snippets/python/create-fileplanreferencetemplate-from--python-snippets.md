---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = FilePlanReferenceTemplate(
	odata_type = "#microsoft.graph.security.filePlanReferenceTemplate",
	display_name = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
)

result = await graph_client.security.labels.file_plan_references.post(request_body)


```