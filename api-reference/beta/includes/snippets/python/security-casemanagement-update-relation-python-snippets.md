---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.incident_relation import IncidentRelation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IncidentRelation(
	odata_type = "#microsoft.graph.security.caseManagement.incidentRelation",
	related_resource_id = "987654321",
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').relations.by_relation_id('relation-id').patch(request_body)


```