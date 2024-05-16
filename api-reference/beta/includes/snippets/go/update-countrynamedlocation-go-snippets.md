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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
namedLocations, err := graphClient.Identity().ConditionalAccess().NamedLocations().ByNamedLocationId("namedLocation-id").Patch(context.Background(), requestBody, nil)


```