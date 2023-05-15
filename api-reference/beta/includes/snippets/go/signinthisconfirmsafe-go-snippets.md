---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/AuditLogs/SignIns/ConfirmSafe"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConfirmSafePostRequestBody()
requestIds := []string {
	"5a0c76d2-cb57-4ece-9bc1-c323178f116a",
	"96609214-09ef-4f80-9d4a-ace5fceecaec",
	"05020696-4eb8-45a3-918f-8f8bb7ad6015",

}
requestBody.SetRequestIds(requestIds)

graphClient.AuditLogs().SignIns().ConfirmSafe().Post(context.Background(), requestBody, nil)


```