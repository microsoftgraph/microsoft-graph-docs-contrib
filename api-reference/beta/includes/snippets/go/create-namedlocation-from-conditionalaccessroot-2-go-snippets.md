---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNamedLocation()
displayName := "Named location with unknown countries and regions"
requestBody.SetDisplayName(&displayName) 
countriesAndRegions := []string {
	"US",
	"GB",
}
requestBody.SetCountriesAndRegions(countriesAndRegions)
includeUnknownCountriesAndRegions := true
requestBody.SetIncludeUnknownCountriesAndRegions(&includeUnknownCountriesAndRegions) 

namedLocations, err := graphClient.Identity().ConditionalAccess().NamedLocations().Post(context.Background(), requestBody, nil)


```