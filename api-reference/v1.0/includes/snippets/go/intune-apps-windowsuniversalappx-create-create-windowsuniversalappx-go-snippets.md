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
applicableArchitectures := graphmodels.X86_WINDOWSARCHITECTURE 
requestBody.SetApplicableArchitectures(&applicableArchitectures) 
applicableDeviceTypes := graphmodels.DESKTOP_WINDOWSDEVICETYPE 
requestBody.SetApplicableDeviceTypes(&applicableDeviceTypes) 
identityName := "Identity Name value"
requestBody.SetIdentityName(&identityName) 
identityPublisherHash := "Identity Publisher Hash value"
requestBody.SetIdentityPublisherHash(&identityPublisherHash) 
identityResourceIdentifier := "Identity Resource Identifier value"
requestBody.SetIdentityResourceIdentifier(&identityResourceIdentifier) 
isBundle := true
requestBody.SetIsBundle(&isBundle) 
minimumSupportedOperatingSystem := graphmodels.NewWindowsMinimumOperatingSystem()
v8_0 := true
minimumSupportedOperatingSystem.SetV8_0(&v8_0) 
v8_1 := true
minimumSupportedOperatingSystem.SetV8_1(&v8_1) 
v10_0 := true
minimumSupportedOperatingSystem.SetV10_0(&v10_0) 
requestBody.SetMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem)
identityVersion := "Identity Version value"
requestBody.SetIdentityVersion(&identityVersion) 

result, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```