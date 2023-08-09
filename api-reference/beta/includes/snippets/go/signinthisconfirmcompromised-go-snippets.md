---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphauditlogs "github.com/microsoftgraph/msgraph-beta-sdk-go/auditlogs"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphauditlogs.NewConfirmCompromisedPostRequestBody()
requestIds := []string {
	"f01c6af6-6683-4a37-a945-0a925501eede",
	"42bf60ac-d0cb-4206-aa5c-101884298f55",
	"f09c8f14-8d8e-42cf-8a7e-732b0594e79b",
}
requestBody.SetRequestIds(requestIds)

graphClient.AuditLogs().SignIns().ConfirmCompromised().Post(context.Background(), requestBody, nil)


```