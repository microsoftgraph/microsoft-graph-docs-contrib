---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.reference_definition import ReferenceDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceDefinition(
	odata_type = "#microsoft.graph.industryData.referenceDefinition",
	reference_type = "RefGradeLevel",
	code = "TestGrade",
	is_disabled = False,
	sort_index = 300,
	display_name = "New Test Grade Level",
)

result = await graph_client.external.industry_data.reference_definitions.post(request_body)


```