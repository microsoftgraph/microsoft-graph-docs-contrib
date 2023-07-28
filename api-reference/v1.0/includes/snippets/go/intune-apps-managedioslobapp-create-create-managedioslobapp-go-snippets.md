---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
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
appAvailability := graphmodels.LINEOFBUSINESS_MANAGEDAPPAVAILABILITY 
requestBody.SetAppAvailability(&appAvailability) 
version := "Version value"
requestBody.SetVersion(&version) 
committedContentVersion := "Committed Content Version value"
requestBody.SetCommittedContentVersion(&committedContentVersion) 
fileName := "File Name value"
requestBody.SetFileName(&fileName) 
size := int64(4)
requestBody.SetSize(&size) 
bundleId := "Bundle Id value"
requestBody.SetBundleId(&bundleId) 
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
expirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:57.2481234-08:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
versionNumber := "Version Number value"
requestBody.SetVersionNumber(&versionNumber) 
buildNumber := "Build Number value"
requestBody.SetBuildNumber(&buildNumber) 

result, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```