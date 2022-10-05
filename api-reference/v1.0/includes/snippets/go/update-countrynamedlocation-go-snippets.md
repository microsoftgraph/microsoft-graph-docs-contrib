---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewNamedLocation()
displayName := "Updated named location without unknown countries and regions"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	countriesAndRegions := []string {
		"CA",
		"IN",

	}
	includeUnknownCountriesAndRegions := false
requestBody.SetIncludeUnknownCountriesAndRegions(&includeUnknownCountriesAndRegions) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().ConditionalAccess().NamedLocationsById("namedLocation-id").Patch(context.Background(), requestBody, nil)


```