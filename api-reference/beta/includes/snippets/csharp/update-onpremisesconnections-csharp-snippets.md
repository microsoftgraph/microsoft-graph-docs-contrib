---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcOnPremisesConnection
{
	OdataType = "#microsoft.graph.cloudPcOnPremisesConnection",
	DisplayName = "Display Name value",
	SubscriptionId = "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
	SubscriptionName = "Subscription Name value",
	AdDomainName = "Active Directory Domain Name value",
	AdDomainUsername = "Active Directory Domain User Name value",
	OrganizationalUnit = "Organization Unit value",
	ResourceGroupId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
	VirtualNetworkId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
	SubnetId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections["{cloudPcOnPremisesConnection-id}"].PatchAsync(requestBody);


```