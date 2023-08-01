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
commandLine := "Command Line value"
requestBody.SetCommandLine(&commandLine) 
productCode := "Product Code value"
requestBody.SetProductCode(&productCode) 
productVersion := "Product Version value"
requestBody.SetProductVersion(&productVersion) 
ignoreVersionDetection := true
requestBody.SetIgnoreVersionDetection(&ignoreVersionDetection) 

result, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```