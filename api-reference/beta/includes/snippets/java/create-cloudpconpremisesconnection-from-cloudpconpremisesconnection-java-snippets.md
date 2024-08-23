---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcOnPremisesConnection cloudPcOnPremisesConnection = new CloudPcOnPremisesConnection();
cloudPcOnPremisesConnection.setDisplayName("test-canary-02");
cloudPcOnPremisesConnection.setConnectionType(CloudPcOnPremisesConnectionType.HybridAzureADJoin);
cloudPcOnPremisesConnection.setType(CloudPcOnPremisesConnectionType.HybridAzureADJoin);
cloudPcOnPremisesConnection.setSubscriptionId("0ac520ee-14c0-480f-b6c9-0a90c585ffff");
cloudPcOnPremisesConnection.setAdDomainName("contoso001.com");
cloudPcOnPremisesConnection.setAdDomainUsername("dcadmin");
cloudPcOnPremisesConnection.setOrganizationalUnit("OU=Domain Controllers, DC=contoso001, DC=com");
cloudPcOnPremisesConnection.setResourceGroupId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG");
cloudPcOnPremisesConnection.setVirtualNetworkId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET");
cloudPcOnPremisesConnection.setSubnetId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet");
CloudPcOnPremisesConnection result = graphClient.deviceManagement().virtualEndpoint().onPremisesConnections().post(cloudPcOnPremisesConnection);


```