---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDelegatedPermissionClassification()
permissionId := "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
requestBody.SetPermissionId(&permissionId)
permissionName := "User.Read"
requestBody.SetPermissionName(&permissionName)
classification := "low"
requestBody.SetClassification(&classification)
options := &msgraphsdk.DelegatedPermissionClassificationsRequestBuilderPostOptions{
	Body: requestBody,
}
servicePrincipalId := "servicePrincipal-id"
result, err := graphClient.ServicePrincipalsById(&servicePrincipalId).DelegatedPermissionClassifications().Post(options)


```