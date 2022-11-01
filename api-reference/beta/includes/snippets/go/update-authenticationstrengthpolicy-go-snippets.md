---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationStrengthPolicy()
displayName := "FIDO2 only"
requestBody.SetDisplayName(&displayName) 
description := "An auth strength allowing only FIDO2 security keys."
requestBody.SetDescription(&description) 

result, err := graphClient.Policies().AuthenticationStrengthPoliciesById("authenticationStrengthPolicy-id").Patch(context.Background(), requestBody, nil)


```