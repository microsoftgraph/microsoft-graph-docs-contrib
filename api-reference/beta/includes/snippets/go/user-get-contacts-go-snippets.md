---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ContactsRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","emailAddresses"},
}
configuration := &graphconfig.ContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Contacts().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```