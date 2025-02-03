---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcOnPremisesConnection cloudPcOnPremisesConnection = new CloudPcOnPremisesConnection();
cloudPcOnPremisesConnection.setOdataType("#microsoft.graph.cloudPcOnPremisesConnection");
cloudPcOnPremisesConnection.setDisplayName("Display Name value");
cloudPcOnPremisesConnection.setSubscriptionId("0ac520ee-14c0-480f-b6c9-0a90c585ffff");
cloudPcOnPremisesConnection.setSubscriptionName("Subscription Name value");
cloudPcOnPremisesConnection.setAdDomainName("Active Directory Domain Name value");
cloudPcOnPremisesConnection.setAdDomainUsername("Active Directory Domain User Name value");
cloudPcOnPremisesConnection.setOrganizationalUnit("Organization Unit value");
cloudPcOnPremisesConnection.setResourceGroupId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG");
cloudPcOnPremisesConnection.setVirtualNetworkId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet");
cloudPcOnPremisesConnection.setSubnetId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default");
CloudPcOnPremisesConnection result = graphClient.deviceManagement().virtualEndpoint().onPremisesConnections().byCloudPcOnPremisesConnectionId("{cloudPcOnPremisesConnection-id}").patch(cloudPcOnPremisesConnection);


```