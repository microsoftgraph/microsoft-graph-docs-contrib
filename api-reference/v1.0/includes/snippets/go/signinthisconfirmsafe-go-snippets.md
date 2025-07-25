---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphauditlogs "github.com/microsoftgraph/msgraph-sdk-go/auditlogs"
	  //other-imports
)

requestBody := graphauditlogs.NewConfirmSafePostRequestBody()
requestIds := []string {
	"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
	"20f91ec9-d140-4d90-9cd9-f618587a1471",
}
requestBody.SetRequestIds(requestIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.AuditLogs().SignIns().ConfirmSafe().Post(context.Background(), requestBody, nil)


```