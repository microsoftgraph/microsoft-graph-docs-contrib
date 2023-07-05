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
committedContentVersion := "Committed Content Version value"
requestBody.SetCommittedContentVersion(&committedContentVersion) 
fileName := "File Name value"
requestBody.SetFileName(&fileName) 
size := int64(4)
requestBody.SetSize(&size) 
bundleId := "Bundle Id value"
requestBody.SetBundleId(&bundleId) 
minimumSupportedOperatingSystem := graphmodels.NewMacOSMinimumOperatingSystem()
v10_7 := true
minimumSupportedOperatingSystem.SetV10_7(&v10_7) 
v10_8 := true
minimumSupportedOperatingSystem.SetV10_8(&v10_8) 
v10_9 := true
minimumSupportedOperatingSystem.SetV10_9(&v10_9) 
v10_10 := true
minimumSupportedOperatingSystem.SetV10_10(&v10_10) 
v10_11 := true
minimumSupportedOperatingSystem.SetV10_11(&v10_11) 
v10_12 := true
minimumSupportedOperatingSystem.SetV10_12(&v10_12) 
v10_13 := true
minimumSupportedOperatingSystem.SetV10_13(&v10_13) 
v10_14 := true
minimumSupportedOperatingSystem.SetV10_14(&v10_14) 
v10_15 := true
minimumSupportedOperatingSystem.SetV10_15(&v10_15) 
v11_0 := true
minimumSupportedOperatingSystem.SetV11_0(&v11_0) 
v12_0 := true
minimumSupportedOperatingSystem.SetV12_0(&v12_0) 
v13_0 := true
minimumSupportedOperatingSystem.SetV13_0(&v13_0) 
requestBody.SetMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem)
buildNumber := "Build Number value"
requestBody.SetBuildNumber(&buildNumber) 
versionNumber := "Version Number value"
requestBody.SetVersionNumber(&versionNumber) 


macOSLobChildApp := graphmodels.NewMacOSLobChildApp()
bundleId := "Bundle Id value"
macOSLobChildApp.SetBundleId(&bundleId) 
buildNumber := "Build Number value"
macOSLobChildApp.SetBuildNumber(&buildNumber) 
versionNumber := "Version Number value"
macOSLobChildApp.SetVersionNumber(&versionNumber) 

childApps := []graphmodels.MacOSLobChildAppable {
	macOSLobChildApp,
}
requestBody.SetChildApps(childApps)
md5HashChunkSize := int32(0)
requestBody.SetMd5HashChunkSize(&md5HashChunkSize) 
md5Hash := []string {
	"Md5Hash value",
}
requestBody.SetMd5Hash(md5Hash)
ignoreVersionDetection := true
requestBody.SetIgnoreVersionDetection(&ignoreVersionDetection) 
installAsManaged := true
requestBody.SetInstallAsManaged(&installAsManaged) 

result, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Patch(context.Background(), requestBody, nil)


```