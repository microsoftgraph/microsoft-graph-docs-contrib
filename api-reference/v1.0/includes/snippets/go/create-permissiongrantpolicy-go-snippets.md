---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPermissionGrantPolicy()
id := "my-custom-consent-policy"
requestBody.SetId(&id) 
displayName := "Custom application consent policy"
requestBody.SetDisplayName(&displayName) 
description := "A custom permission grant policy to customize conditions for granting consent."
requestBody.SetDescription(&description) 

result, err := graphClient.Policies().PermissionGrantPolicies().Post(context.Background(), requestBody, nil)


```