---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNamedLocation()
displayName := "Untrusted IP named location"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	isTrusted := false
requestBody.SetIsTrusted(&isTrusted) 


 := graphmodels.New()
cidrAddress := "12.34.221.11/22"
.SetCidrAddress(&cidrAddress) 
 := graphmodels.New()
cidrAddress := "2001:0:9d38:90d6:0:0:0:0/63"
.SetCidrAddress(&cidrAddress) 

	ipRanges := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Post(context.Background(), requestBody, nil)


```