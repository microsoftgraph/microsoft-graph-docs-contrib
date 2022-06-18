---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEducationUser()
requestBody.SetRelatedContacts( []RelatedContact {
	msgraphsdk.NewRelatedContact(),
displayName := "Father Time"
	SetDisplayName(&displayName)
emailAddress := "father@time.com"
	SetEmailAddress(&emailAddress)
mobilePhone := "4251231234"
	SetMobilePhone(&mobilePhone)
relationship := "guardian"
	SetRelationship(&relationship)
accessConsent := true
	SetAccessConsent(&accessConsent)
	msgraphsdk.NewRelatedContact(),
displayName := "Mother Nature"
	SetDisplayName(&displayName)
emailAddress := "mother@nature.co.uk"
	SetEmailAddress(&emailAddress)
mobilePhone := "3251231234"
	SetMobilePhone(&mobilePhone)
relationship := "parent"
	SetRelationship(&relationship)
accessConsent := true
	SetAccessConsent(&accessConsent)
}
educationUserId := "educationUser-id"
graphClient.Education().UsersById(&educationUserId).Patch(requestBody)


```