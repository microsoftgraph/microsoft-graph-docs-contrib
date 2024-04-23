---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.administrative_unit_provisioning_flow import AdministrativeUnitProvisioningFlow
from msgraph.generated.models.admin_unit_creation_options import AdminUnitCreationOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdministrativeUnitProvisioningFlow(
	odata_type = "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",
	creation_options = AdminUnitCreationOptions(
		create_based_on_org = True,
		create_based_on_org_plusrole_group = False,
	),
)

result = await graph_client.external.industry_data.outbound_provisioning_flow_sets.by_outbound_provisioning_flow_set_id('outboundProvisioningFlowSet-id').provisioning_flows.by_provisioning_flow_id('provisioningFlow-id').patch(request_body)


```