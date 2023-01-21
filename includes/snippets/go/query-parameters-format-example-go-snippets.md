---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFormat := "json"

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Get(context.Background(), configuration)


```