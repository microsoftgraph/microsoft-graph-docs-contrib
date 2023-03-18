---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.BookingBusinessesById("bookingBusiness-id").CustomersById("bookingCustomer-id").Delete(context.Background(), nil)


```