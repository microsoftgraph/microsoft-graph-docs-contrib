---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOnPremisesConnection = new CloudPcOnPremisesConnection
{
	DisplayName = "test-canary-02",
	Type = CloudPcOnPremisesConnectionType.HybridAzureADJoin,
	SubscriptionId = "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
	SubscriptionName = "CPC customer 001 test subscription",
	AdDomainName = "contoso001.com",
	AdDomainUsername = "dcadmin",
	OrganizationalUnit = "OU=Domain Controllers, DC=contoso001, DC=com",
	ResourceGroupId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
	VirtualNetworkId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
	SubnetId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet"
};

await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections
	.Request()
	.AddAsync(cloudPcOnPremisesConnection);

```