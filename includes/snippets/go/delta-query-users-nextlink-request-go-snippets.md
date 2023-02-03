---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestSkiptoken := "oEBwdSP6uehIAxQOWq_3Ksh_TLol6KIm3stvdc6hGhZRi1hQ7Spe__dpvm3U4zReE4CYXC2zOtaKdi7KHlUtC2CbRiBIUwOxPKLa"

requestParameters := &graphconfig.UsersMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphconfig.UsersMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Delta().Get(context.Background(), configuration)


```