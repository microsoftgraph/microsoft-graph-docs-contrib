---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetRecipients( []DriveRecipient {
	msgraphsdk.NewDriveRecipient(),
	SetAdditionalData(map[string]interface{}{
		"email": "john@contoso.com",
	}
	msgraphsdk.NewDriveRecipient(),
	SetAdditionalData(map[string]interface{}{
		"email": "ryan@external.com",
	}
}
requestBody.SetRoles( []String {
	"read",
}
options := &msgraphsdk.GrantRequestBuilderPostOptions{
	Body: requestBody,
}
sharedDriveItemId := "sharedDriveItem-id"
result, err := graphClient.SharesById(&sharedDriveItemId).Permission().Grant().Post(options);


```