---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}",
}
options := &msgraphsdk.AppManagementPolicyRequestBuilderPostOptions{
	Body: requestBody,
}
servicePrincipalId := "servicePrincipal-id"
appManagementPolicyId := "appManagementPolicy-id"
graphClient.ServicePrincipalsById(&servicePrincipalId).AppManagementPoliciesById(&appManagementPolicyId).Post(options)


```