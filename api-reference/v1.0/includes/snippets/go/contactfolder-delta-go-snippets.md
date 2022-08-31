---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "odata.maxpagesize=2",
}
configuration := &graphconfig.DeltaRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().ContactFolders().Delta().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```