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



bundles, err := graphClient.Drives().ByDriveId("drive-id").Bundles().ByDriveItemId("driveItem-id").Get(context.Background(), nil)


```