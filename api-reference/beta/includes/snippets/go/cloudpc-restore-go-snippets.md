---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/CloudPCs/Item/Restore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRestorePostRequestBody()
cloudPcSnapshotId := "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8"
requestBody.SetCloudPcSnapshotId(&cloudPcSnapshotId) 

graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").Restore().Post(context.Background(), requestBody, nil)


```