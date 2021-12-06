---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContact()
requestBody.SetEmailAddresses( []TypedEmailAddress {
	msgraphsdk.NewTypedEmailAddress(),
	SetAdditionalData(map[string]interface{}{
		"type": "personal",
		"name": "Pavel Bansky",
		"address": "pavelb@adatum.onmicrosoft.com",
	}
	msgraphsdk.NewTypedEmailAddress(),
	SetAdditionalData(map[string]interface{}{
		"address": "pavelb@fabrikam.onmicrosoft.com",
		"name": "Pavel Bansky",
		"type": "other",
		"otherLabel": "Volunteer work",
	}
}
options := &msgraphsdk.ContactRequestBuilderPatchOptions{
	Body: requestBody,
}
contactId := "contact-id"
graphClient.Me().ContactsById(&contactId).Patch(options)


```