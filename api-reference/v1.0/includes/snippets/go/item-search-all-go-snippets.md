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



search(q='{q}'), err := graphClient.Drives().ByDriveId("drive-id").Search(q='{q}')().Get(context.Background(), nil)


```