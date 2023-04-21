---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Directory/InboundSharedUserProfiles/Item/ExportPersonalData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExportPersonalDataPostRequestBody()
storageLocation := "MyStorageAccount"
requestBody.SetStorageLocation(&storageLocation) 

graphClient.Directory().InboundSharedUserProfiles().ByInboundSharedUserProfileId("inboundSharedUserProfile-userId").ExportPersonalData().Post(context.Background(), requestBody, nil)


```