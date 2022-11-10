---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DriveItemRequestBuilderGetQueryParameters{
	Expand: [] string {"children"},
}
configuration := &graphconfig.DriveItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drive().ItemsById("driveItem-id").Get(context.Background(), configuration)


```