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



children, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Children().Get(context.Background(), nil)


```