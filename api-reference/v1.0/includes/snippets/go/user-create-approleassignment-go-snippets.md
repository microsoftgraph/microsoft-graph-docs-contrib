---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAppRoleAssignment()
principalId := "cde330e5-2150-4c11-9c5b-14bfdc948c79"
requestBody.SetPrincipalId(&principalId)
resourceId := "8e881353-1735-45af-af21-ee1344582a4d"
requestBody.SetResourceId(&resourceId)
appRoleId := "00000000-0000-0000-0000-000000000000"
requestBody.SetAppRoleId(&appRoleId)
options := &msgraphsdk.AppRoleAssignmentsRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).AppRoleAssignments().Post(options);


```