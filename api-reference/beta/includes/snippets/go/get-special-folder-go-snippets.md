---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



special, err := graphClient.Drives().ByDriveId("drive-id").Special().ByDriveItemId("driveItem-id").Get(context.Background(), nil)


```