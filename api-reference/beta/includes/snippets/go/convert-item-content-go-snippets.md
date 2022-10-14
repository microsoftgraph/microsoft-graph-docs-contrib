---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFormat := "{format}"

requestParameters := &graphconfig.ContentRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.ContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Drive().ItemsById("driveItem-id").Content().Get(context.Background(), configuration)


```