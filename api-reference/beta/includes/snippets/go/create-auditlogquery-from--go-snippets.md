---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewAuditLogQuery()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
filterStartDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetFilterStartDateTime(&filterStartDateTime) 
filterEndDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetFilterEndDateTime(&filterEndDateTime) 
recordTypeFilters := []graphmodelssecurity.AuditLogRecordTypeable {
	auditLogRecordType := graphmodels.STRING_AUDITLOGRECORDTYPE 
	requestBody.SetAuditLogRecordType(&auditLogRecordType)
}
requestBody.SetRecordTypeFilters(recordTypeFilters)
keywordFilter := "String"
requestBody.SetKeywordFilter(&keywordFilter) 
operationFilters := []string {
	"String",
}
requestBody.SetOperationFilters(operationFilters)
userPrincipalNameFilters := []string {
	"String",
}
requestBody.SetUserPrincipalNameFilters(userPrincipalNameFilters)
ipAddressFilters := []string {
	"String",
}
requestBody.SetIpAddressFilters(ipAddressFilters)
objectIdFilters := []string {
	"String",
}
requestBody.SetObjectIdFilters(objectIdFilters)
administrativeUnitIdFilters := []string {
	"String",
}
requestBody.SetAdministrativeUnitIdFilters(administrativeUnitIdFilters)
status := graphmodels.STRING_AUDITLOGQUERYSTATUS 
requestBody.SetStatus(&status) 
additionalData := map[string]interface{}{
	"serviceFilter" : "String", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
queries, err := graphClient.Security().AuditLog().Queries().Post(context.Background(), requestBody, nil)


```