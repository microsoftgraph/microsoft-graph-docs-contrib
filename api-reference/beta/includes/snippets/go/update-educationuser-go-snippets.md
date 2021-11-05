---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationUser()
requestBody.SetRelatedContacts( []RelatedContact {
	msgraphsdk.NewRelatedContact(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Father Time",
		"emailAddress": "father@time.com",
		"mobilePhone": "4251231234",
		"relationship": "guardian",
		"accessConsent": true,
	}
	msgraphsdk.NewRelatedContact(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Mother Nature",
		"emailAddress": "mother@nature.co.uk",
		"mobilePhone": "3251231234",
		"relationship": "parent",
		"accessConsent": true,
	}
}
options := &msgraphsdk.EducationUserRequestBuilderPatchOptions{
	Body: requestBody,
}
educationUserId := "educationUser-id"
graphClient.Education().UsersById(&educationUserId).Patch(options);


```