---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TrustFramework/KeySets/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewKeySet()
additionalData := map[string]interface{}{


 := graphmodels.New()
k := "k-value"
.SetK(&k) 
x5c := []string {
	"x5c-value",

}
.SetX5c(x5c)
x5t := "x5t-value"
.SetX5t(&x5t) 
kty := "kty-value"
.SetKty(&kty) 
use := "use-value"
.SetUse(&use) 
exp := int32(99)
.SetExp(&exp) 
nbf := int32(99)
.SetNbf(&nbf) 
kid := "kid-value"
.SetKid(&kid) 
e := "e-value"
.SetE(&e) 
n := "n-value"
.SetN(&n) 
d := "d-value"
.SetD(&d) 
p := "p-value"
.SetP(&p) 
q := "q-value"
.SetQ(&q) 
dp := "dp-value"
.SetDp(&dp) 
dq := "dq-value"
.SetDq(&dq) 
qi := "qi-value"
.SetQi(&qi) 

	keys := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").Put(context.Background(), requestBody, nil)


```