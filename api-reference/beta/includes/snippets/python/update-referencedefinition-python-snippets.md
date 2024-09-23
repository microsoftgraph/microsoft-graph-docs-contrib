---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.reference_definition import ReferenceDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceDefinition(
	odata_type = "#microsoft.graph.industryData.referenceDefinition",
	display_name = "Updated Test Grade Name",
)

result = await graph_client.external.industry_data.reference_definitions.by_reference_definition_id('referenceDefinition-id').patch(request_body)


```