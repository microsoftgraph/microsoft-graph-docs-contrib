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



masterCategories, err := graphClient.Me().Outlook().MasterCategories().ByOutlookCategoryId("outlookCategory-id").Get(context.Background(), nil)


```