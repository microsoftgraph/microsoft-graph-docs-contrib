---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestTop := int32(1)

requestParameters := &graphconfig.SecuritySecureScoresRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.SecuritySecureScoresRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().SecureScores().Get(context.Background(), configuration)


```