---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectory.NewExportPersonalDataPostRequestBody()
storageLocation := "MyStorageAccount"
requestBody.SetStorageLocation(&storageLocation) 

graphClient.Directory().InboundSharedUserProfiles().ByInboundSharedUserProfileId("inboundSharedUserProfile-userId").ExportPersonalData().Post(context.Background(), requestBody, nil)


```