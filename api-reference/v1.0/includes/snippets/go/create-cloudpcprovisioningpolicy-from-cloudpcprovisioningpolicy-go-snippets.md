---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCloudPcProvisioningPolicy()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 


cloudPcDomainJoinConfiguration := graphmodels.NewCloudPcDomainJoinConfiguration()
onPremisesConnectionId := "16ee6c71-fc10-438b-88ac-daa1ccafffff"
cloudPcDomainJoinConfiguration.SetOnPremisesConnectionId(&onPremisesConnectionId) 
domainJoinType := graphmodels.HYBRIDAZUREADJOIN_CLOUDPCDOMAINJOINTYPE 
cloudPcDomainJoinConfiguration.SetDomainJoinType(&domainJoinType) 
cloudPcDomainJoinConfiguration1 := graphmodels.NewCloudPcDomainJoinConfiguration()
onPremisesConnectionId := "26e16c71-f210-438b-88ac-d481ccafffff"
cloudPcDomainJoinConfiguration1.SetOnPremisesConnectionId(&onPremisesConnectionId) 
domainJoinType := graphmodels.HYBRIDAZUREADJOIN_CLOUDPCDOMAINJOINTYPE 
cloudPcDomainJoinConfiguration1.SetDomainJoinType(&domainJoinType) 

domainJoinConfigurations := []graphmodels.CloudPcDomainJoinConfigurationable {
	cloudPcDomainJoinConfiguration,
	cloudPcDomainJoinConfiguration1,
}
requestBody.SetDomainJoinConfigurations(domainJoinConfigurations)
id := "1d164206-bf41-4fd2-8424-a3192d39ffff"
requestBody.SetId(&id) 
enableSingleSignOn := true
requestBody.SetEnableSingleSignOn(&enableSingleSignOn) 
imageDisplayName := "Windows-10 19h1-evd"
requestBody.SetImageDisplayName(&imageDisplayName) 
imageId := "MicrosoftWindowsDesktop_Windows-10_19h1-evd"
requestBody.SetImageId(&imageId) 
imageType := graphmodels.GALLERY_CLOUDPCPROVISIONINGPOLICYIMAGETYPE 
requestBody.SetImageType(&imageType) 
windowsSetting := graphmodels.NewCloudPcWindowsSetting()
locale := "en-US"
windowsSetting.SetLocale(&locale) 
requestBody.SetWindowsSetting(windowsSetting)
provisioningType := graphmodels.DEDICATED_CLOUDPCPROVISIONINGTYPE 
requestBody.SetProvisioningType(&provisioningType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().Post(context.Background(), requestBody, nil)


```