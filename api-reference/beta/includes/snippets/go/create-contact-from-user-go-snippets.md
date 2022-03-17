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
requestBody.SetEmailAddresses( []TypedEmailAddress {
	msgraphsdk.NewTypedEmailAddress(),
	SetAdditionalData(map[string]interface{}{
		"address": "pavelb@contoso.onmicrosoft.com",
		"name": "Pavel Bansky",
		"type": "personal",
	}
	msgraphsdk.NewTypedEmailAddress(),
	SetAdditionalData(map[string]interface{}{
		"address": "pavelb@fabrikam.onmicrosoft.com",
		"name": "Pavel Bansky",
		"type": "other",
		"otherLabel": "Volunteer work",
	}
}
requestBody.SetPhones( []Phone {
	msgraphsdk.NewPhone(),
	SetAdditionalData(map[string]interface{}{
		"number": "+1 732 555 0102",
		"type": "business",
	}
}
options := &msgraphsdk.ContactsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Contacts().Post(options)


```