---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.file_plan_reference_template import FilePlanReferenceTemplate
from msgraph.generated.models.identity_set import IdentitySet

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