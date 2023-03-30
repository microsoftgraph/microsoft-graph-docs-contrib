---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/AuditLogs/SignIns/ConfirmCompromised"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConfirmCompromisedPostRequestBody()
requestIds := []string {
	"f01c6af6-6683-4a37-a945-0a925501eede",
	"42bf60ac-d0cb-4206-aa5c-101884298f55",
	"f09c8f14-8d8e-42cf-8a7e-732b0594e79b",

}
requestBody.SetRequestIds(requestIds)

graphClient.AuditLogs().SignIns().ConfirmCompromised().Post(context.Background(), requestBody, nil)


```