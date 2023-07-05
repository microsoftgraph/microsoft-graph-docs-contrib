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
packageId := "Package Id value"
requestBody.SetPackageId(&packageId) 
minimumSupportedOperatingSystem := graphmodels.NewAndroidMinimumOperatingSystem()
v4_0 := true
minimumSupportedOperatingSystem.SetV4_0(&v4_0) 
v4_0_3 := true
minimumSupportedOperatingSystem.SetV4_0_3(&v4_0_3) 
v4_1 := true
minimumSupportedOperatingSystem.SetV4_1(&v4_1) 
v4_2 := true
minimumSupportedOperatingSystem.SetV4_2(&v4_2) 
v4_3 := true
minimumSupportedOperatingSystem.SetV4_3(&v4_3) 
v4_4 := true
minimumSupportedOperatingSystem.SetV4_4(&v4_4) 
v5_0 := true
minimumSupportedOperatingSystem.SetV5_0(&v5_0) 
v5_1 := true
minimumSupportedOperatingSystem.SetV5_1(&v5_1) 
v6_0 := true
minimumSupportedOperatingSystem.SetV6_0(&v6_0) 
v7_0 := true
minimumSupportedOperatingSystem.SetV7_0(&v7_0) 
v7_1 := true
minimumSupportedOperatingSystem.SetV7_1(&v7_1) 
v8_0 := true
minimumSupportedOperatingSystem.SetV8_0(&v8_0) 
v8_1 := true
minimumSupportedOperatingSystem.SetV8_1(&v8_1) 
v9_0 := true
minimumSupportedOperatingSystem.SetV9_0(&v9_0) 
v10_0 := true
minimumSupportedOperatingSystem.SetV10_0(&v10_0) 
v11_0 := true
minimumSupportedOperatingSystem.SetV11_0(&v11_0) 
requestBody.SetMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem)
versionName := "Version Name value"
requestBody.SetVersionName(&versionName) 
versionCode := "Version Code value"
requestBody.SetVersionCode(&versionCode) 

result, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Patch(context.Background(), requestBody, nil)


```