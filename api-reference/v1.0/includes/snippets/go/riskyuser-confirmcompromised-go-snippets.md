---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/IdentityProtection/RiskyUsers/ConfirmCompromised"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConfirmCompromisedPostRequestBody()
userIds := []string {
	"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
	"20f91ec9-d140-4d90-9cd9-f618587a1471",

}
requestBody.SetUserIds(userIds)

graphClient.IdentityProtection().RiskyUsers().ConfirmCompromised().Post(context.Background(), requestBody, nil)


```