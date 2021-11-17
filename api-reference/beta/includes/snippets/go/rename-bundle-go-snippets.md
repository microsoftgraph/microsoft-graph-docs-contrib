---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewDriveItem()
name := "Shared legal agreements"
requestBody.SetName(&name)
options := &msgraphsdk.DriveItemRequestBuilderPatchOptions{
	Body: requestBody,
}
driveItemId := "driveItem-id"
graphClient.Drive().ItemsById(&driveItemId).Patch(options)


```