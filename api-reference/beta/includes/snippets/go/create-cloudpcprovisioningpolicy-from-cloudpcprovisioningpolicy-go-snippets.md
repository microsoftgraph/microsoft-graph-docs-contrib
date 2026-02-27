---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
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
type := graphmodels.HYBRIDAZUREADJOIN_CLOUDPCDOMAINJOINTYPE 
cloudPcDomainJoinConfiguration.SetType(&type) 
cloudPcDomainJoinConfiguration1 := graphmodels.NewCloudPcDomainJoinConfiguration()
onPremisesConnectionId := "26e16c71-f210-438b-88ac-d481ccafffff"
cloudPcDomainJoinConfiguration1.SetOnPremisesConnectionId(&onPremisesConnectionId) 
type := graphmodels.HYBRIDAZUREADJOIN_CLOUDPCDOMAINJOINTYPE 
cloudPcDomainJoinConfiguration1.SetType(&type) 

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
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)
windowsSetting := graphmodels.NewCloudPcWindowsSetting()
locale := "en-US"
windowsSetting.SetLocale(&locale) 
requestBody.SetWindowsSetting(windowsSetting)
provisioningType := graphmodels.DEDICATED_CLOUDPCPROVISIONINGTYPE 
requestBody.SetProvisioningType(&provisioningType) 
userSettingsPersistenceConfiguration := graphmodels.NewCloudPcUserSettingsPersistenceConfiguration()
userSettingsPersistenceEnabled := true
userSettingsPersistenceConfiguration.SetUserSettingsPersistenceEnabled(&userSettingsPersistenceEnabled) 
userSettingsPersistenceStorageSizeCategory := graphmodels.FOURGB_CLOUDPCUSERSETTINGSPERSISTENCESTORAGESIZECATEGORY 
userSettingsPersistenceConfiguration.SetUserSettingsPersistenceStorageSizeCategory(&userSettingsPersistenceStorageSizeCategory) 
requestBody.SetUserSettingsPersistenceConfiguration(userSettingsPersistenceConfiguration)
additionalData := map[string]interface{}{
domainJoinConfiguration := graph.New()
domainJoinType := "hybridAzureADJoin"
domainJoinConfiguration.SetDomainJoinType(&domainJoinType) 
onPremisesConnectionId := "16ee6c71-fc10-438b-88ac-daa1ccafffff"
domainJoinConfiguration.SetOnPremisesConnectionId(&onPremisesConnectionId) 
	requestBody.SetDomainJoinConfiguration(domainJoinConfiguration)
	"onPremisesConnectionId" : "4e47d0f6-6f77-44f0-8893-c0fe1701ffff", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().Post(context.Background(), requestBody, nil)


```