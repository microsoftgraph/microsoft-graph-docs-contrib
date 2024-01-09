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



profileCardProperties, err := graphClient.Admin().People().ProfileCardProperties().ByProfileCardPropertyId("profileCardProperty-id").Get(context.Background(), nil)


```