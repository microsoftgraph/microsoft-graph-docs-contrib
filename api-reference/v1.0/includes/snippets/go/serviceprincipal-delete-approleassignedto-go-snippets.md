---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.ServicePrincipalsById("servicePrincipal-id").AppRoleAssignedToById("appRoleAssignment-id").Delete(context.Background(), nil)


```