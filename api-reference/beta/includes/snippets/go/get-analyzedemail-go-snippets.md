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



analyzedEmails, err := graphClient.Security().Collaboration().AnalyzedEmails().ByAnalyzedEmailId("analyzedEmail-id").Get(context.Background(), nil)


```