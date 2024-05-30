---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphauditlogs "github.com/microsoftgraph/msgraph-beta-sdk-go/auditlogs"
	  //other-imports
)

requestBody := graphauditlogs.NewConfirmSafePostRequestBody()
requestIds := []string {
	"5a0c76d2-cb57-4ece-9bc1-c323178f116a",
	"96609214-09ef-4f80-9d4a-ace5fceecaec",
	"05020696-4eb8-45a3-918f-8f8bb7ad6015",
}
requestBody.SetRequestIds(requestIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.AuditLogs().SignIns().ConfirmSafe().Post(context.Background(), requestBody, nil)


```