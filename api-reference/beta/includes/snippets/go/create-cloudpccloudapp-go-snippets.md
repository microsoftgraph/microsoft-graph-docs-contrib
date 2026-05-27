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

requestBody := graphmodels.NewCloudPcCloudApp()
displayName := "Remote Desktop Connection"
requestBody.SetDisplayName(&displayName) 
discoveredAppName := "Remote Desktop Connection"
requestBody.SetDiscoveredAppName(&discoveredAppName) 
provisioningPolicyId := "e31f75e9-25a8-41e9-a9d5-ce8fd484af15"
requestBody.SetProvisioningPolicyId(&provisioningPolicyId) 
description := ""
requestBody.SetDescription(&description) 
appDetail := graphmodels.NewCloudPcFilePathAppDetail()
filePath := "C:\Windows\system32\mstsc.exe"
appDetail.SetFilePath(&filePath) 
commandLineArguments := ""
appDetail.SetCommandLineArguments(&commandLineArguments) 
iconPath := "C:\Windows\system32\mstsc.exe"
appDetail.SetIconPath(&iconPath) 
iconIndex := int32(0)
appDetail.SetIconIndex(&iconIndex) 
requestBody.SetAppDetail(appDetail)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cloudApps, err := graphClient.DeviceManagement().VirtualEndpoint().CloudApps().Post(context.Background(), requestBody, nil)


```