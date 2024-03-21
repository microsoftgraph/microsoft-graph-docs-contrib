---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphauditlogs "github.com/microsoftgraph/msgraph-sdk-go/auditlogs"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z"

requestParameters := &graphauditlogs.AuditLogsSignInsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphauditlogs.AuditLogsSignInsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

signIns, err := graphClient.AuditLogs().SignIns().Get(context.Background(), configuration)


```