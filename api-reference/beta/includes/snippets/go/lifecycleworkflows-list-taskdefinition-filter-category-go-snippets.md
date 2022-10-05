---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "category eq 'joiner,leaver' OR category eq 'joiner'"

requestParameters := &graphconfig.TaskDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.TaskDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().TaskDefinitions().Get(context.Background(), configuration)


```