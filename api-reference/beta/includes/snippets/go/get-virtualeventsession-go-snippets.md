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



sessions, err := graphClient.Solutions().VirtualEvents().Events().ByVirtualEventId("virtualEvent-id").Sessions().ByVirtualEventSessionId("virtualEventSession-id").Get(context.Background(), nil)


```