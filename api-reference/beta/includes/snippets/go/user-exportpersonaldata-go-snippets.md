---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Users/Item/ExportPersonalData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExportPersonalDataPostRequestBody()
storageLocation := "storageLocation-value"
requestBody.SetStorageLocation(&storageLocation) 

graphClient.Users().ByUserId("user-id").ExportPersonalData().Post(context.Background(), requestBody, nil)


```