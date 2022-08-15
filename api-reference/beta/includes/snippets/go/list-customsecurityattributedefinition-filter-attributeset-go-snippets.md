---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'",
}
configuration := &graphconfig.CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```