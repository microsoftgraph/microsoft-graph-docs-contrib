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



q := "{q}"
search, err := graphClient.Drives().ByDriveId("drive-id").SearchWithQ(&q).Get(context.Background(), nil)


```