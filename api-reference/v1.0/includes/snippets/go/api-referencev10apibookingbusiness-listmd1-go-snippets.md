---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.BookingBusinessesRequestBuilderGetQueryParameters{
	Query: "Adventure",
}
configuration := &graphconfig.BookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Solutions().BookingBusinesses().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```