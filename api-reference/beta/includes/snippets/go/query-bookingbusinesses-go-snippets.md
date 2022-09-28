---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestQuery := "Adventure"

requestParameters := &graphconfig.BookingBusinessesRequestBuilderGetQueryParameters{
	Query: &requestQuery,
}
configuration := &graphconfig.BookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.BookingBusinesses().Get(context.Background(), configuration)


```