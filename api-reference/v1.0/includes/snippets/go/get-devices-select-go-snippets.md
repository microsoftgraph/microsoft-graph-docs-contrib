---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.DevicesRequestBuilderGetQueryParameters{
	Select: [] string {"id","extensionAttributes"},
}
configuration := &graphconfig.DevicesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Devices().Get(context.Background(), configuration)


```