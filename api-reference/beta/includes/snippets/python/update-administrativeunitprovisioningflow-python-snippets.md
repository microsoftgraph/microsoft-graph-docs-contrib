---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.administrative_unit_provisioning_flow import AdministrativeUnitProvisioningFlow
from msgraph_beta.generated.models.industry_data.admin_unit_creation_options import AdminUnitCreationOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AdministrativeUnitProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
	creation_options = AdminUnitCreationOptions(
		create_based_on_org = True,
		create_based_on_org_plusrole_group = False,
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.by_provisioning_flow_id('provisioningFlow-id').patch(request_body)


```