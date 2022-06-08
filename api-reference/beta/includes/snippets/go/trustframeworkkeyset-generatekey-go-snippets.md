---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
use := "sig"
requestBody.SetUse(&use)
kty := "RSA"
requestBody.SetKty(&kty)
nbf := int64(1508969811)
requestBody.SetNbf(&nbf)
exp := int64(1508969811)
requestBody.SetExp(&exp)
trustFrameworkKeySetId := "trustFrameworkKeySet-id"
result, err := graphClient.TrustFramework().KeySetsById(&trustFrameworkKeySetId).GenerateKey(trustFrameworkKeySet-id).Post(requestBody)


```