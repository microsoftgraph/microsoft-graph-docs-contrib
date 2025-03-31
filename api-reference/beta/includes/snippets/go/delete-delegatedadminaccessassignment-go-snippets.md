---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtenantrelationships "github.com/microsoftgraph/msgraph-beta-sdk-go/tenantrelationships"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")

configuration := &graphtenantrelationships.DelegatedAdminRelationshipsItemAccessAssignmentsItemRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.TenantRelationships().DelegatedAdminRelationships().ByDelegatedAdminRelationshipId("delegatedAdminRelationship-id").AccessAssignments().ByDelegatedAdminAccessAssignmentId("delegatedAdminAccessAssignment-id").Delete(context.Background(), configuration)


```