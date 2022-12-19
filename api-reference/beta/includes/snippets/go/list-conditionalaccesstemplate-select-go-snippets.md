---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "scenarios has 'secureFoundation'"

requestParameters := &graphconfig.TemplatesRequestBuilderGetQueryParameters{
	Select: [] string {"name","description","id","scenarios"},
	Filter: &requestFilter,
}
configuration := &graphconfig.TemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Templates().Get(context.Background(), configuration)


```