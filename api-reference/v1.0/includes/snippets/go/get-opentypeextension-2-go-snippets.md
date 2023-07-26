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



result, err := graphClient.Groups().ByGroupId("group-id").Events().ByEventId("event-id").Extensions().ByExtensionId("extension-id").Get(context.Background(), nil)


```