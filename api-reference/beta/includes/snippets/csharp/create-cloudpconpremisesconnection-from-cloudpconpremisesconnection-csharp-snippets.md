---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcOnPremisesConnection
{
	DisplayName = "test-canary-02",
	Type = CloudPcOnPremisesConnectionType.HybridAzureADJoin,
	SubscriptionId = "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
	AdDomainName = "contoso001.com",
	AdDomainUsername = "dcadmin",
	OrganizationalUnit = "OU=Domain Controllers, DC=contoso001, DC=com",
	ResourceGroupId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
	VirtualNetworkId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
	SubnetId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections.PostAsync(requestBody);


```