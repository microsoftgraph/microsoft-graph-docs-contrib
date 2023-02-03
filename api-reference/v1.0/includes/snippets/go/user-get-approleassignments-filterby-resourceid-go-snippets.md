---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "resourceId eq 8e881353-1735-45af-af21-ee1344582a4d"

requestParameters := &graphconfig.UserItemAppRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.UserItemAppRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").AppRoleAssignments().Get(context.Background(), configuration)


```