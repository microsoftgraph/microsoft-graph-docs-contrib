---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.incident_case import IncidentCase
from msgraph_beta.generated.models.incident_classification import IncidentClassification
from msgraph_beta.generated.models.incident_determination import IncidentDetermination
from msgraph_beta.generated.models.incident_severity import IncidentSeverity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IncidentCase(
	odata_type = "#microsoft.graph.security.caseManagement.incidentCase",
	display_name = "Incident Case MS-002",
	status = "InProgress",
	classification = IncidentClassification.TruePositive,
	determination = IncidentDetermination.Phishing,
	severity = IncidentSeverity.High,
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').patch(request_body)


```