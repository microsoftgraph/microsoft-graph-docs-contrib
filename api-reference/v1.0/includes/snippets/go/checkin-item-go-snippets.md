---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Drives/Item/Items/Item/Checkin"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCheckinPostRequestBody()
comment := "Updating the latest guidelines"
requestBody.SetComment(&comment) 

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Checkin().Post(context.Background(), requestBody, nil)


```