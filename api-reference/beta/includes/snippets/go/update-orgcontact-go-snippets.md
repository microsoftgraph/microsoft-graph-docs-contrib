---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOrgContact()
companyName := "companyName-value"
requestBody.SetCompanyName(&companyName)
department := "department-value"
requestBody.SetDepartment(&department)
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"businessPhones":  []String {
		"businessPhones-value",
	}
	"city": "city-value",
	"country": "country-value",
}
options := &msgraphsdk.OrgContactRequestBuilderPatchOptions{
	Body: requestBody,
}
orgContactId := "orgContact-id"
graphClient.ContactsById(&orgContactId).Patch(options)


```