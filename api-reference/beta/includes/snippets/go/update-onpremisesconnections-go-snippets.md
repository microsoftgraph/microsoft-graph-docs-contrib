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
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
subscriptionId := "0ac520ee-14c0-480f-b6c9-0a90c585ffff"
requestBody.SetSubscriptionId(&subscriptionId) 
subscriptionName := "Subscription Name value"
requestBody.SetSubscriptionName(&subscriptionName) 
adDomainName := "Active Directory Domain Name value"
requestBody.SetAdDomainName(&adDomainName) 
adDomainUsername := "Active Directory Domain User Name value"
requestBody.SetAdDomainUsername(&adDomainUsername) 
organizationalUnit := "Organization Unit value"
requestBody.SetOrganizationalUnit(&organizationalUnit) 
resourceGroupId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG"
requestBody.SetResourceGroupId(&resourceGroupId) 
virtualNetworkId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet"
requestBody.SetVirtualNetworkId(&virtualNetworkId) 
subnetId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default"
requestBody.SetSubnetId(&subnetId) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnections().ByOnPremisesConnectionId("cloudPcOnPremisesConnection-id").Patch(context.Background(), requestBody, nil)


```