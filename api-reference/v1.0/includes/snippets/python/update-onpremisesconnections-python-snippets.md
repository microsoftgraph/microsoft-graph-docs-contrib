---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_on_premises_connection import CloudPcOnPremisesConnection

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcOnPremisesConnection(
	odata_type = "#microsoft.graph.cloudPcOnPremisesConnection",
	display_name = "Display Name value",
	subscription_id = "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
	subscription_name = "Subscription Name value",
	ad_domain_name = "Active Directory Domain Name value",
	ad_domain_username = "Active Directory Domain User Name value",
	organizational_unit = "Organization Unit value",
	resource_group_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
	virtual_network_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
	subnet_id = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
)

result = await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').patch(request_body)


```