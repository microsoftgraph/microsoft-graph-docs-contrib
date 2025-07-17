---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_on_premises_connection import CloudPcOnPremisesConnection
from msgraph_beta.generated.models.cloud_pc_on_premises_connection_type import CloudPcOnPremisesConnectionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcOnPremisesConnection(
	display_name = "test-canary-02",
	connection_type = CloudPcOnPremisesConnectionType.HybridAzureADJoin,
	type = CloudPcOnPremisesConnectionType.HybridAzureADJoin,
	subscription_id = "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
	ad_domain_name = "contoso001.com",
	ad_domain_username = "dcadmin",
	organizational_unit = "OU=Domain Controllers, DC=contoso001, DC=com",
	resource_group_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
	virtual_network_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
	subnet_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
)

result = await graph_client.device_management.virtual_endpoint.on_premises_connections.post(request_body)


```