---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.file_plan_reference_template import FilePlanReferenceTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = FilePlanReferenceTemplate(
	odata_type = "#microsoft.graph.security.filePlanReferenceTemplate",
	display_name = "FIN 01-02-001",
)

result = await graph_client.security.labels.file_plan_references.post(request_body)


```