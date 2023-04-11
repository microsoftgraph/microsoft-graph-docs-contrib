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


requestBody := graphmodels.NewCloudPcProvisioningPolicy()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
domainJoinConfiguration := graphmodels.NewCloudPcDomainJoinConfiguration()
onPremisesConnectionId := "16ee6c71-fc10-438b-88ac-daa1ccafffff"
domainJoinConfiguration.SetOnPremisesConnectionId(&onPremisesConnectionId) 
additionalData := map[string]interface{}{
	"domainJoinType" : "hybridAzureADJoin", 
}
domainJoinConfiguration.SetAdditionalData(additionalData)
requestBody.SetDomainJoinConfiguration(domainJoinConfiguration)
enableSingleSignOn := true
requestBody.SetEnableSingleSignOn(&enableSingleSignOn) 
imageDisplayName := "Windows-10 19h1-evd"
requestBody.SetImageDisplayName(&imageDisplayName) 
imageId := "MicrosoftWindowsDesktop_Windows-10_19h1-evd"
requestBody.SetImageId(&imageId) 
imageType := graphmodels.GALLERY_CLOUDPCPROVISIONINGPOLICYIMAGETYPE 
requestBody.SetImageType(&imageType) 
onPremisesConnectionId := "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
requestBody.SetOnPremisesConnectionId(&onPremisesConnectionId) 
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)
provisioningType := graphmodels.DEDICATED_CLOUDPCPROVISIONINGTYPE 
requestBody.SetProvisioningType(&provisioningType) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().Post(context.Background(), requestBody, nil)


```