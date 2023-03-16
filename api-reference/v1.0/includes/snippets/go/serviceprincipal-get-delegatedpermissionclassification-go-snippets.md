---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").DelegatedPermissionClassifications().Get(context.Background(), nil)


```