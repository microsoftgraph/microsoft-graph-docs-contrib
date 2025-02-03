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


requestFilter := "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z"

requestParameters := &graphauditlogs.AuditLogsSignInsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphauditlogs.AuditLogsSignInsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
signIns, err := graphClient.AuditLogs().SignIns().Get(context.Background(), configuration)


```