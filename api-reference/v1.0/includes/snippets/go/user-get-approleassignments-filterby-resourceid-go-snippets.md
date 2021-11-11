---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.AppRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "resourceId%20eq%208e881353-1735-45af-af21-ee1344582a4d",
}
options := &msgraphsdk.AppRoleAssignmentsRequestBuilderGetOptions{
	Q: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).AppRoleAssignments().Get(options)


```