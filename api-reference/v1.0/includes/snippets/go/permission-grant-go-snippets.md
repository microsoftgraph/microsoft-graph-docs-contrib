---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetRecipients( []DriveRecipient {
	msgraphsdk.NewDriveRecipient(),
email := "john@contoso.com"
	SetEmail(&email)
	msgraphsdk.NewDriveRecipient(),
email := "ryan@external.com"
	SetEmail(&email)
}
requestBody.SetRoles( []String {
	"read",
}
sharedDriveItemId := "sharedDriveItem-id"
result, err := graphClient.SharesById(&sharedDriveItemId).Permission().Grant(sharedDriveItem-id).Post(requestBody)


```