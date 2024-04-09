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



objectId := "{objectId}"
subjects, err := graphClient.IdentityGovernance().EntitlementManagement().SubjectsWithObjectId(&objectId).Get(context.Background(), nil)


```