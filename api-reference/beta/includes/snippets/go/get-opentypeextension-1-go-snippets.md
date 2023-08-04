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



extensions, err := graphClient.Me().Messages().ByMessageId("message-id").Extensions().ByExtensionId("extension-id").Get(context.Background(), nil)


```