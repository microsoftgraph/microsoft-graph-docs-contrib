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


requestTop := int32(1)

requestParameters := &graphauditlogs.AuditLogsCustomSecurityAttributeAuditsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphauditlogs.AuditLogsCustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customSecurityAttributeAudits, err := graphClient.AuditLogs().CustomSecurityAttributeAudits().Get(context.Background(), configuration)


```