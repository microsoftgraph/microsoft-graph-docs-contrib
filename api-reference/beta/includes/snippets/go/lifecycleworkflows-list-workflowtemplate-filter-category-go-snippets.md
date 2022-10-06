---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "category eq 'leaver'"

requestParameters := &graphconfig.WorkflowTemplatesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.WorkflowTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowTemplates().Get(context.Background(), configuration)


```