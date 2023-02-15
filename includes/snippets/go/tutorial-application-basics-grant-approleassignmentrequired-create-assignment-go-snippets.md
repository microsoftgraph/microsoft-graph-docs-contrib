---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("b8afc02cb-4d62-4dba-b536-9f6d73e9e26")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("89473e09-0737-41a1-a0c3-1418d6908bcd")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("00000000-0000-0000-0000-000000000000")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").AppRoleAssignedTo().Post(context.Background(), requestBody, nil)


```