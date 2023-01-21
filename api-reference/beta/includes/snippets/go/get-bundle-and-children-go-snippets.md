---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DriveItemItemRequestBuilderGetQueryParameters{
	Expand: [] string {"children"},
}
configuration := &graphconfig.DriveItemItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Drive().ItemsById("driveItem-id").Get(context.Background(), configuration)


```