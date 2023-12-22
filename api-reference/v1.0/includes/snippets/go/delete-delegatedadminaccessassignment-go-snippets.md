---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphtenantrelationships "github.com/microsoftgraph/msgraph-sdk-go/tenantrelationships"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")

configuration := &graphtenantrelationships.TenantRelationshipsDelegatedAdminRelationshipItemAccessAssignmentItemRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

graphClient.TenantRelationships().DelegatedAdminRelationships().ByDelegatedAdminRelationshipId("delegatedAdminRelationship-id").AccessAssignments().ByDelegatedAdminAccessAssignmentId("delegatedAdminAccessAssignment-id").Delete(context.Background(), configuration)


```