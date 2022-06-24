---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ContactsRequestBuilderGetQueryParameters{
	Select: "displayName,emailAddresses",
}
options := &msgraphsdk.ContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Me().Contacts().GetWithRequestConfigurationAndResponseHandler(options, nil)


```