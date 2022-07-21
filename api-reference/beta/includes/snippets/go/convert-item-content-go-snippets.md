---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ContentRequestBuilderGetQueryParameters{
	Format: "{format}",
}
configuration := &graphconfig.ContentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Drive().ItemsById("driveItem-id").Content().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```