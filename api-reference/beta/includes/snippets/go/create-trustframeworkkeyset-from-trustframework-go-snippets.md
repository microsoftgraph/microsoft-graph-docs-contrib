---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTrustFrameworkKeySet()
id := "keyset1"
requestBody.SetId(&id) 


trustFrameworkKey := graphmodels.NewTrustFrameworkKey()
k := "k-value"
trustFrameworkKey.SetK(&k) 
x5c := []string {
	"x5c-value",

}
trustFrameworkKey.SetX5c(x5c)
x5t := "x5t-value"
trustFrameworkKey.SetX5t(&x5t) 
kty := "kty-value"
trustFrameworkKey.SetKty(&kty) 
use := "use-value"
trustFrameworkKey.SetUse(&use) 
exp := int64(99)
trustFrameworkKey.SetExp(&exp) 
nbf := int64(99)
trustFrameworkKey.SetNbf(&nbf) 
kid := "kid-value"
trustFrameworkKey.SetKid(&kid) 
e := "e-value"
trustFrameworkKey.SetE(&e) 
n := "n-value"
trustFrameworkKey.SetN(&n) 
d := "d-value"
trustFrameworkKey.SetD(&d) 
p := "p-value"
trustFrameworkKey.SetP(&p) 
q := "q-value"
trustFrameworkKey.SetQ(&q) 
dp := "dp-value"
trustFrameworkKey.SetDp(&dp) 
dq := "dq-value"
trustFrameworkKey.SetDq(&dq) 
qi := "qi-value"
trustFrameworkKey.SetQi(&qi) 

keys := []graphmodels.TrustFrameworkKeyable {
	trustFrameworkKey,

}
requestBody.SetKeys(keys)

result, err := graphClient.TrustFramework().KeySets().Post(context.Background(), requestBody, nil)


```