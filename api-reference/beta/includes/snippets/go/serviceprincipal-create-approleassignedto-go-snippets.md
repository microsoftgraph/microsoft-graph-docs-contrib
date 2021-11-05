---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAppRoleAssignment()
principalId := "33ad69f9-da99-4bed-acd0-3f24235cb296"
requestBody.SetPrincipalId(&principalId)
resourceId := "9028d19c-26a9-4809-8e3f-20ff73e2d75e"
requestBody.SetResourceId(&resourceId)
appRoleId := "ef7437e6-4f94-4a0a-a110-a439eb2aa8f7"
requestBody.SetAppRoleId(&appRoleId)
options := &msgraphsdk.AppRoleAssignedToRequestBuilderPostOptions{
	Body: requestBody,
}
servicePrincipalId := "servicePrincipal-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).AppRoleAssignedTo().Post(options);


```