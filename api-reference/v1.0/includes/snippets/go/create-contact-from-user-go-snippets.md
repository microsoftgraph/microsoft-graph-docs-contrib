---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewContact()
givenName := "Pavel"
requestBody.SetGivenName(&givenName)
surname := "Bansky"
requestBody.SetSurname(&surname)
requestBody.SetEmailAddresses( []EmailAddress {
	msgraphsdk.NewEmailAddress(),
	SetAdditionalData(map[string]interface{}{
		"address": "pavelb@fabrikam.onmicrosoft.com",
		"name": "Pavel Bansky",
	}
}
requestBody.SetBusinessPhones( []String {
	"+1 732 555 0102",
}
options := &msgraphsdk.ContactsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Contacts().Post(options)


```