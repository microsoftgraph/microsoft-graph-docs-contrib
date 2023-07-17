---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNamedLocation()
displayName := "Updated named location without unknown countries and regions"
requestBody.SetDisplayName(&displayName) 
countriesAndRegions := []string {
	"CA",
	"IN",
}
requestBody.SetCountriesAndRegions(countriesAndRegions)
includeUnknownCountriesAndRegions := false
requestBody.SetIncludeUnknownCountriesAndRegions(&includeUnknownCountriesAndRegions) 

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().ByNamedLocationId("namedLocation-id").Patch(context.Background(), requestBody, nil)


```