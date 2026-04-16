---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.insider_risky_user_approval import InsiderRiskyUserApproval
from msgraph_beta.generated.models.purview_insider_risk_management_level import PurviewInsiderRiskManagementLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InsiderRiskyUserApproval(
	odata_type = "#microsoft.graph.insiderRiskyUserApproval",
	id = "insiderRiskyUserApproval",
	is_approval_required = True,
	minimum_risk_level = PurviewInsiderRiskManagementLevel.Elevated,
)

result = await graph_client.identity_governance.entitlement_management.control_configurations.by_control_configuration_id('controlConfiguration-id').put(request_body)


```