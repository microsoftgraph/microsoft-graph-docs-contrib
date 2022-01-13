---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

bookingCurrencyId := "bookingCurrency-id"
result, err := graphClient.BookingCurrenciesById(&bookingCurrencyId).Get(nil)


```