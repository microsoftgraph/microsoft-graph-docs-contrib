---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.DriveItemRequestBuilderGetQueryParameters{
	Expand: "children",
}
options := &msgraphsdk.DriveItemRequestBuilderGetOptions{
	Q: requestParameters,
}
driveItemId := "driveItem-id"
result, err := graphClient.Drive().ItemsById(&driveItemId).Get(options)


```