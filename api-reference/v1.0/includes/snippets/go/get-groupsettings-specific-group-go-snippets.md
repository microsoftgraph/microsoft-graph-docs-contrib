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



settings, err := graphClient.Groups().ByGroupId("group-id").Settings().ByGroupSettingId("groupSetting-id").Get(context.Background(), nil)


```