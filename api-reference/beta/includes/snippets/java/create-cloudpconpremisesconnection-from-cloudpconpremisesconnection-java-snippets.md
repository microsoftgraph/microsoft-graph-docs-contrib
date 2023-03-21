---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOnPremisesConnection cloudPcOnPremisesConnection = new CloudPcOnPremisesConnection();
cloudPcOnPremisesConnection.displayName = "test-canary-02";
cloudPcOnPremisesConnection.type = CloudPcOnPremisesConnectionType.HYBRID_AZURE_A_D_JOIN;
cloudPcOnPremisesConnection.subscriptionId = "0ac520ee-14c0-480f-b6c9-0a90c585ffff";
cloudPcOnPremisesConnection.adDomainName = "contoso001.com";
cloudPcOnPremisesConnection.adDomainUsername = "dcadmin";
cloudPcOnPremisesConnection.organizationalUnit = "OU=Domain Controllers, DC=contoso001, DC=com";
cloudPcOnPremisesConnection.resourceGroupId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG";
cloudPcOnPremisesConnection.virtualNetworkId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET";
cloudPcOnPremisesConnection.subnetId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet";

graphClient.deviceManagement().virtualEndpoint().onPremisesConnections()
	.buildRequest()
	.post(cloudPcOnPremisesConnection);

```