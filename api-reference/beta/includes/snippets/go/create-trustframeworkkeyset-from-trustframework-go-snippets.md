---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTrustFrameworkKeySet()
id := "keyset1"
requestBody.SetId(&id)
requestBody.SetKeys( []TrustFrameworkKey {
	msgraphsdk.NewTrustFrameworkKey(),
k := "k-value"
	SetK(&k)
	SetX5c( []String {
		"x5c-value",
	}
x5t := "x5t-value"
	SetX5t(&x5t)
kty := "kty-value"
	SetKty(&kty)
use := "use-value"
	SetUse(&use)
exp := int64(99)
	SetExp(&exp)
nbf := int64(99)
	SetNbf(&nbf)
kid := "kid-value"
	SetKid(&kid)
e := "e-value"
	SetE(&e)
n := "n-value"
	SetN(&n)
d := "d-value"
	SetD(&d)
p := "p-value"
	SetP(&p)
q := "q-value"
	SetQ(&q)
dp := "dp-value"
	SetDp(&dp)
dq := "dq-value"
	SetDq(&dq)
qi := "qi-value"
	SetQi(&qi)
}
result, err := graphClient.TrustFramework().KeySets().Post(requestBody)


```