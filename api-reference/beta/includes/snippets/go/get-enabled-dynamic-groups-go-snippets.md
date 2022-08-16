---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Filter: "mailEnabled eq false and securityEnabled eq true and NOT) and membershipRuleProcessingState eq 'On'",
	Count: true,
	Select: [] string {"id","membershipRule","membershipRuleProcessingState"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```