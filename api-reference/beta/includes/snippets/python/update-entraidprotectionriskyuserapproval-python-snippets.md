---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.entra_id_protection_risky_user_approval import EntraIdProtectionRiskyUserApproval
from msgraph_beta.generated.models.risk_level import RiskLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EntraIdProtectionRiskyUserApproval(
	odata_type = "#microsoft.graph.entraIdProtectionRiskyUserApproval",
	id = "EntraIdProtectionRiskyUserApproval",
	is_approval_required = True,
	minimum_risk_level = RiskLevel.Medium,
)

result = await graph_client.identity_governance.entitlement_management.control_configurations.by_control_configuration_id('controlConfiguration-id').put(request_body)


```