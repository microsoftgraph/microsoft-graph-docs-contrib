---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBookingCustomer()
displayName := "Adele"
requestBody.SetDisplayName(&displayName) 
emailAddress := "adele@relecloud.com"
requestBody.SetEmailAddress(&emailAddress) 

result, err := graphClient.BookingBusinessesById("bookingBusiness-id").CustomersById("bookingCustomer-id").Patch(context.Background(), requestBody, nil)


```