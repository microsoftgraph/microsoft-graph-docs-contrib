---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewContact()
homeAddress := msgraphsdk.NewPhysicalAddress()
requestBody.SetHomeAddress(homeAddress)
street := "123 Some street"
homeAddress.SetStreet(&street)
city := "Seattle"
homeAddress.SetCity(&city)
state := "WA"
homeAddress.SetState(&state)
postalCode := "98121"
homeAddress.SetPostalCode(&postalCode)
birthday, err := time.Parse(time.RFC3339, "1974-07-22")
requestBody.SetBirthday(&birthday)
options := &msgraphsdk.ContactRequestBuilderPatchOptions{
	Body: requestBody,
}
contactId := "contact-id"
graphClient.Me().ContactsById(&contactId).Patch(options)


```