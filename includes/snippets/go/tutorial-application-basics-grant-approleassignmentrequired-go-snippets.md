---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewServicePrincipal()
appRoleAssignmentRequired := true
requestBody.SetAppRoleAssignmentRequired(&appRoleAssignmentRequired) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```