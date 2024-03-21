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



instances, err := graphClient.Me().Settings().Windows().ByWindowsSettingId("windowsSetting-id").Instances().ByWindowsSettingInstanceId("windowsSettingInstance-id").Get(context.Background(), nil)


```