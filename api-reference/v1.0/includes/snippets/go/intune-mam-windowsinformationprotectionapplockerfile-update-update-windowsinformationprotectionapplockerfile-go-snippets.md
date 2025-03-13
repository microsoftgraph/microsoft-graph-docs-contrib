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

requestBody := graphmodels.NewWindowsInformationProtectionAppLockerFile()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
fileHash := "File Hash value"
requestBody.SetFileHash(&fileHash) 
file := []byte("zmlsZQ==")
requestBody.SetFile(&file) 
version := "Version value"
requestBody.SetVersion(&version) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exemptAppLockerFiles, err := graphClient.DeviceAppManagement().WindowsInformationProtectionPolicies().ByWindowsInformationProtectionPolicyId("windowsInformationProtectionPolicy-id").ExemptAppLockerFiles().ByWindowsInformationProtectionAppLockerFileId("windowsInformationProtectionAppLockerFile-id").Patch(context.Background(), requestBody, nil)


```