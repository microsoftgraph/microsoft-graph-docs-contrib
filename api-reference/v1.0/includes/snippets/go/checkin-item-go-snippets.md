---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdrives.NewCheckinPostRequestBody()
comment := "Updating the latest guidelines"
requestBody.SetComment(&comment) 

graphClient.Drives().ByDriveId("drive-id").Items().ByItemId("driveItem-id").Checkin().Post(context.Background(), requestBody, nil)


```