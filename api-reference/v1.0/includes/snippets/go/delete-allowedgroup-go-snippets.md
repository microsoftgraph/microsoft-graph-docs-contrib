---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Print().Shares().ByShareId("printerShare-id").AllowedGroups().ByAllowedGroupId("group-id").Ref().Delete(context.Background(), nil)


```