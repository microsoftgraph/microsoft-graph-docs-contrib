---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")

configuration := &graphconfig.TenantRelationshipsDelegatedAdminRelationshipItemAccessAssignmentItemRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

graphClient.TenantRelationships().DelegatedAdminRelationshipsById("delegatedAdminRelationship-id").AccessAssignmentsById("delegatedAdminAccessAssignment-id").Delete(context.Background(), configuration)


```