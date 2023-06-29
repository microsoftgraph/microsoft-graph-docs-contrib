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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWindowsInformationProtectionAppLockerFile()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
fileHash := "File Hash value"
requestBody.SetFileHash(&fileHash) 
file := []byte("zmlsZQ==")
requestBody.SetFile(&file) 
version := "Version value"
requestBody.SetVersion(&version) 

result, err := graphClient.DeviceAppManagement().WindowsInformationProtectionPolicies().ByWindowsInformationProtectionPolicieId("windowsInformationProtectionPolicy-id").ExemptAppLockerFiles().ByExemptAppLockerFileId("windowsInformationProtectionAppLockerFile-id").Patch(context.Background(), requestBody, nil)


```