---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Oauth2PermissionGrants().Get(context.Background(), nil)


```