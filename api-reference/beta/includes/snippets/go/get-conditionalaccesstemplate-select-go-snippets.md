---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ConditionalAccessTemplateRequestBuilderGetQueryParameters{
	Select: [] string {"details"},
}
configuration := &graphconfig.ConditionalAccessTemplateRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().TemplatesById("conditionalAccessTemplate-id").Get(context.Background(), configuration)


```