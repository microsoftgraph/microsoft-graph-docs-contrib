---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobileApp()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
largeIcon := graphmodels.NewMimeContent()
type := "Type value"
largeIcon.SetType(&type) 
value := []byte("dmFsdWU=")
largeIcon.SetValue(&value) 
requestBody.SetLargeIcon(largeIcon)
isFeatured := true
requestBody.SetIsFeatured(&isFeatured) 
privacyInformationUrl := "https://example.com/privacyInformationUrl/"
requestBody.SetPrivacyInformationUrl(&privacyInformationUrl) 
informationUrl := "https://example.com/informationUrl/"
requestBody.SetInformationUrl(&informationUrl) 
owner := "Owner value"
requestBody.SetOwner(&owner) 
developer := "Developer value"
requestBody.SetDeveloper(&developer) 
notes := "Notes value"
requestBody.SetNotes(&notes) 
publishingState := graphmodels.PROCESSING_MOBILEAPPPUBLISHINGSTATE 
requestBody.SetPublishingState(&publishingState) 
bundleId := "Bundle Id value"
requestBody.SetBundleId(&bundleId) 
appStoreUrl := "https://example.com/appStoreUrl/"
requestBody.SetAppStoreUrl(&appStoreUrl) 
applicableDeviceType := graphmodels.NewIosDeviceType()
iPad := true
applicableDeviceType.SetIPad(&iPad) 
iPhoneAndIPod := true
applicableDeviceType.SetIPhoneAndIPod(&iPhoneAndIPod) 
requestBody.SetApplicableDeviceType(applicableDeviceType)
minimumSupportedOperatingSystem := graphmodels.NewIosMinimumOperatingSystem()
v8_0 := true
minimumSupportedOperatingSystem.SetV8_0(&v8_0) 
v9_0 := true
minimumSupportedOperatingSystem.SetV9_0(&v9_0) 
v10_0 := true
minimumSupportedOperatingSystem.SetV10_0(&v10_0) 
v11_0 := true
minimumSupportedOperatingSystem.SetV11_0(&v11_0) 
v12_0 := true
minimumSupportedOperatingSystem.SetV12_0(&v12_0) 
v13_0 := true
minimumSupportedOperatingSystem.SetV13_0(&v13_0) 
v14_0 := true
minimumSupportedOperatingSystem.SetV14_0(&v14_0) 
v15_0 := true
minimumSupportedOperatingSystem.SetV15_0(&v15_0) 
requestBody.SetMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem)

result, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```