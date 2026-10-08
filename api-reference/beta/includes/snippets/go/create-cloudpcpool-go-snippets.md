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

requestBody := graphmodels.NewCloudPcPool()
displayName := "Contoso Development Pool"
requestBody.SetDisplayName(&displayName) 
cloudPcConfiguration := graphmodels.NewCloudPcConfiguration()
imageId := "microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365"
cloudPcConfiguration.SetImageId(&imageId) 
imageType := graphmodels.GALLERY_CLOUDPCPROVISIONINGPOLICYIMAGETYPE 
cloudPcConfiguration.SetImageType(&imageType) 
osLocale := "en-US"
cloudPcConfiguration.SetOsLocale(&osLocale) 
requestBody.SetCloudPcConfiguration(cloudPcConfiguration)
networkConfiguration := graphmodels.NewCloudPcMicrosoftHostedNetworkConfiguration()
geographicLocationType := graphmodels.USWEST_CLOUDPCGEOGRAPHICLOCATIONTYPE 
networkConfiguration.SetGeographicLocationType(&geographicLocationType) 


cloudPcRegionGroupConfiguration := graphmodels.NewCloudPcRegionGroupConfiguration()
regionGroup := graphmodels.USWEST_CLOUDPCREGIONGROUP 
cloudPcRegionGroupConfiguration.SetRegionGroup(&regionGroup) 
regions := []string {
	"westus2",
	"westus3",
}
cloudPcRegionGroupConfiguration.SetRegions(regions)

regionGroups := []graphmodels.CloudPcRegionGroupConfigurationable {
	cloudPcRegionGroupConfiguration,
}
networkConfiguration.SetRegionGroups(regionGroups)
requestBody.SetNetworkConfiguration(networkConfiguration)
billingConfiguration := graphmodels.NewCloudPcAgentPoolBillingConfiguration()
billingType := graphmodels.PAYASYOUGO_CLOUDPCAGENTPOOLBILLINGTYPE 
billingConfiguration.SetBillingType(&billingType) 
billingPlanId := "00000000-0000-0000-0000-000000000001"
billingConfiguration.SetBillingPlanId(&billingPlanId) 
requestBody.SetBillingConfiguration(billingConfiguration)
scalingPolicy := graphmodels.NewCloudPcAgentPoolScalingPolicy()
minimumCount := int32(2)
scalingPolicy.SetMinimumCount(&minimumCount) 
maximumCount := int32(10)
scalingPolicy.SetMaximumCount(&maximumCount) 
requestBody.SetScalingPolicy(scalingPolicy)
capabilities := graphmodels.NewCloudPcAgentPoolCapabilityConfiguration()
enableSingleSignOn := true
capabilities.SetEnableSingleSignOn(&enableSingleSignOn) 
requestBody.SetCapabilities(capabilities)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cloudPcPools, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPcPools().Post(context.Background(), requestBody, nil)


```