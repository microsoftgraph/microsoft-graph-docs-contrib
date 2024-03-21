---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



follow, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Follow().Post(context.Background(), nil)


```