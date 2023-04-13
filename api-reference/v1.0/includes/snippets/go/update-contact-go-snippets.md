---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContact()
homeAddress := graphmodels.NewPhysicalAddress()
street := "123 Some street"
homeAddress.SetStreet(&street) 
city := "Seattle"
homeAddress.SetCity(&city) 
state := "WA"
homeAddress.SetState(&state) 
postalCode := "98121"
homeAddress.SetPostalCode(&postalCode) 
requestBody.SetHomeAddress(homeAddress)
birthday , err := time.Parse(time.RFC3339, "1974-07-22")
requestBody.SetBirthday(&birthday) 

result, err := graphClient.Me().ContactsById("contact-id").Patch(context.Background(), requestBody, nil)


```