---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.reference_definition import ReferenceDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceDefinition(
	odata_type = "#microsoft.graph.industryData.referenceDefinition",
	display_name = "Updated Test Grade Name",
)

result = await graph_client.external.industry_data.reference_definitions.by_reference_definition_id('referenceDefinition-id').patch(request_body)


```