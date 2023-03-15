---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAppManagementPolicie()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ServicePrincipalsById("servicePrincipal-id").AppManagementPoliciesById("appManagementPolicy-id").Post(context.Background(), requestBody, nil)


```