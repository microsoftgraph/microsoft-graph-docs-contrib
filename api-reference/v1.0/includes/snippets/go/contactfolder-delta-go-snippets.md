---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

configuration := &graphconfig.MeContactFoldersDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().ContactFolders().Delta().Get(context.Background(), configuration)


```