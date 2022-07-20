---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TagRequestBuilderDeleteQueryParameters{
	Forcedelete: true,
}
configuration := &graphconfig.TagRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Compliance().Ediscovery().CasesById("case-id").TagsById("tag-id").DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```