---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityUserFlowAttribute()
description := "Your new hobby"
requestBody.SetDescription(&description) 

result, err := graphClient.Identity().UserFlowAttributesById("identityUserFlowAttribute-id").Patch(context.Background(), requestBody, nil)


```