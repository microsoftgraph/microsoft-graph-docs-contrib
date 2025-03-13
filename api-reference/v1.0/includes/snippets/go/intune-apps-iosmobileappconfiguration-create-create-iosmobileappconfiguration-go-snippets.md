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

requestBody := graphmodels.NewManagedDeviceMobileAppConfiguration()
targetedMobileApps := []string {
	"Targeted Mobile Apps value",
}
requestBody.SetTargetedMobileApps(targetedMobileApps)
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
encodedSettingXml := []byte("zW5jb2RlZFNldHRpbmdYbWw=")
requestBody.SetEncodedSettingXml(&encodedSettingXml) 


appConfigurationSettingItem := graphmodels.NewAppConfigurationSettingItem()
appConfigKey := "App Config Key value"
appConfigurationSettingItem.SetAppConfigKey(&appConfigKey) 
appConfigKeyType := graphmodels.INTEGERTYPE_MDMAPPCONFIGKEYTYPE 
appConfigurationSettingItem.SetAppConfigKeyType(&appConfigKeyType) 
appConfigKeyValue := "App Config Key Value value"
appConfigurationSettingItem.SetAppConfigKeyValue(&appConfigKeyValue) 

settings := []graphmodels.AppConfigurationSettingItemable {
	appConfigurationSettingItem,
}
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mobileAppConfigurations, err := graphClient.DeviceAppManagement().MobileAppConfigurations().Post(context.Background(), requestBody, nil)


```