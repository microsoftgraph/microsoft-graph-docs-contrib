---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'"

requestParameters := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Get(context.Background(), configuration)


```