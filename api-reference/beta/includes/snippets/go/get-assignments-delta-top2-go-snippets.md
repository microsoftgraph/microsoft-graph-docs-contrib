---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.DeltaRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.DeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").Assignments().Delta().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```