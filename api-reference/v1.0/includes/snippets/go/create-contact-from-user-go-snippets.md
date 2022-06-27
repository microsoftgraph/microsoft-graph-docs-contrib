---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContact()
givenName := "Pavel"
requestBody.SetGivenName(&givenName)
surname := "Bansky"
requestBody.SetSurname(&surname)
requestBody.SetEmailAddresses( []EmailAddress {
	msgraphsdk.NewEmailAddress(),
address := "pavelb@fabrikam.onmicrosoft.com"
	SetAddress(&address)
name := "Pavel Bansky"
	SetName(&name)
}
requestBody.SetBusinessPhones( []String {
	"+1 732 555 0102",
}
result, err := graphClient.Me().Contacts().Post(requestBody)


```