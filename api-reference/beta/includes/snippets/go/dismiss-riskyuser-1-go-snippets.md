---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphriskyusers "github.com/microsoftgraph/msgraph-beta-sdk-go/riskyusers"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphriskyusers.NewDismissPostRequestBody()
userIds := []string {
	"04487ee0-f4f6-4e7f-8999-facc5a30e232",
	"13387ee0-f4f6-4e7f-8999-facc5120e345",
}
requestBody.SetUserIds(userIds)

graphClient.RiskyUsers().Dismiss().Post(context.Background(), requestBody, nil)


```