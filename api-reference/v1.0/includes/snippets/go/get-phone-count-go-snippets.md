---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestSearch := "\"displayName:wa\""
requestCount := true

requestParameters := &graphconfig.ContactsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
}
configuration := &graphconfig.ContactsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Contacts().Get(context.Background(), configuration)


```