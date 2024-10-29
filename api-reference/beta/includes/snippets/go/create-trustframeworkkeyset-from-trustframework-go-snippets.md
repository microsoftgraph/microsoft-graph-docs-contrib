---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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
exp := int32(99)
trustFrameworkKey.SetExp(&exp) 
nbf := int32(99)
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
keySets, err := graphClient.TrustFramework().KeySets().Post(context.Background(), requestBody, nil)


```