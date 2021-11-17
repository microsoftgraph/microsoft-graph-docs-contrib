---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTrustFrameworkKeySet()
id := "keyset1"
requestBody.SetId(&id)
options := &msgraphsdk.KeySetsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.TrustFramework().KeySets().Post(options)


```