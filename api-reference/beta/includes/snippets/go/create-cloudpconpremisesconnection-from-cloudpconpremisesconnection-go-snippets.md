---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcOnPremisesConnection()
displayName := "test-canary-02"
requestBody.SetDisplayName(&displayName) 
type := graphmodels.HYBRIDAZUREADJOIN_CLOUDPCONPREMISESCONNECTIONTYPE 
requestBody.SetType(&type) 
subscriptionId := "0ac520ee-14c0-480f-b6c9-0a90c585ffff"
requestBody.SetSubscriptionId(&subscriptionId) 
adDomainName := "contoso001.com"
requestBody.SetAdDomainName(&adDomainName) 
adDomainUsername := "dcadmin"
requestBody.SetAdDomainUsername(&adDomainUsername) 
organizationalUnit := "OU=Domain Controllers, DC=contoso001, DC=com"
requestBody.SetOrganizationalUnit(&organizationalUnit) 
resourceGroupId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG"
requestBody.SetResourceGroupId(&resourceGroupId) 
virtualNetworkId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET"
requestBody.SetVirtualNetworkId(&virtualNetworkId) 
subnetId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet"
requestBody.SetSubnetId(&subnetId) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnections().Post(context.Background(), requestBody, nil)


```