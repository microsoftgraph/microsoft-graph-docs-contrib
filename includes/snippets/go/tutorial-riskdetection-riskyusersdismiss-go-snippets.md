---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-sdk-go/identityprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentityprotection.NewDismissPostRequestBody()
userIds := []string {
	"4628e7df-dff3-407c-a08f-75f08c0806dc",
}
requestBody.SetUserIds(userIds)

graphClient.IdentityProtection().RiskyUsers().Dismiss().Post(context.Background(), requestBody, nil)


```