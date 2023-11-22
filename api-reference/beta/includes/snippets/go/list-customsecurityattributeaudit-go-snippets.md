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



requestTop := int32(1)

requestParameters := &graphauditlogs.AuditLogsCustomSecurityAttributeAuditsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphauditlogs.AuditLogsCustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

customSecurityAttributeAudits, err := graphClient.AuditLogs().CustomSecurityAttributeAudits().Get(context.Background(), configuration)


```