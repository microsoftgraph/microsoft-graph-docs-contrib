---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewExportPersonalDataPostRequestBody()
storageLocation := "storageLocation-value"
requestBody.SetStorageLocation(&storageLocation) 

graphClient.Users().ByUserId("user-id").ExportPersonalData().Post(context.Background(), requestBody, nil)


```