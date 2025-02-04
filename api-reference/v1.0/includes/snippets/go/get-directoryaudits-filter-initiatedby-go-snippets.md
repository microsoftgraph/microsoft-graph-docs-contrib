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


requestFilter := "initiatedBy/user/id eq '00000000-0000-0000-0000-000000000000'"

requestParameters := &graphauditlogs.AuditLogsDirectoryAuditsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphauditlogs.AuditLogsDirectoryAuditsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
directoryAudits, err := graphClient.AuditLogs().DirectoryAudits().Get(context.Background(), configuration)


```