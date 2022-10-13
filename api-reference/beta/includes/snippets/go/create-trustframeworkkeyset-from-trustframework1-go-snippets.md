---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTrustFrameworkKeySet()
id := "keyset1"
requestBody.SetId(&id) 

result, err := graphClient.TrustFramework().KeySets().Post(context.Background(), requestBody, nil)


```