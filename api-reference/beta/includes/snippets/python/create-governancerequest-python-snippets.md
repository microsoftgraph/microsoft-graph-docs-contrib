---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.governance_request import GovernanceRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernanceRequest(
	governed_tenant_id = "bbbbcccc-1111-dddd-2222-eeee3333ffff",
	additional_data = {
			"governance_policy_template@odata_bind" : "https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4",
	}
)

result = await graph_client.directory.tenant_governance.governance_requests.post(request_body)


```