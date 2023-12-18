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


requestBody := graphriskyusers.NewConfirmCompromisedPostRequestBody()
userIds := []string {
	"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
	"20f91ec9-d140-4d90-9cd9-f618587a1471",
}
requestBody.SetUserIds(userIds)

graphClient.RiskyUsers().ConfirmCompromised().Post(context.Background(), requestBody, nil)


```