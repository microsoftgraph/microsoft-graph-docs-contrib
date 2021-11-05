---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTrustFrameworkKeySet()
id := "keyset1"
requestBody.SetId(&id)
requestBody.SetKeys( []TrustFrameworkKey {
	msgraphsdk.NewTrustFrameworkKey(),
	SetAdditionalData(map[string]interface{}{
		"k": "k-value",
		"x5c":  []String {
			"x5c-value",
		}
		"x5t": "x5t-value",
		"kty": "kty-value",
		"use": "use-value",
		"exp": ,
		"nbf": ,
		"kid": "kid-value",
		"e": "e-value",
		"n": "n-value",
		"d": "d-value",
		"p": "p-value",
		"q": "q-value",
		"dp": "dp-value",
		"dq": "dq-value",
		"qi": "qi-value",
	}
}
options := &msgraphsdk.KeySetsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.TrustFramework().KeySets().Post(options);


```