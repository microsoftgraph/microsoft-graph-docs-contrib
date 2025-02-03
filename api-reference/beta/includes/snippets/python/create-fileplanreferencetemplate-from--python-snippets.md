---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.file_plan_reference_template import FilePlanReferenceTemplate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FilePlanReferenceTemplate(
	odata_type = "#microsoft.graph.security.filePlanReferenceTemplate",
	display_name = "FIN 01-02-001",
)

result = await graph_client.security.labels.file_plan_references.post(request_body)


```