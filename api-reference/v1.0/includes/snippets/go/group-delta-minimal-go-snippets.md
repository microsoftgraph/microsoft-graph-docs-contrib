---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DeltaRequestBuilderGetQueryParameters{
	Select: "displayName,description,mailNickname",
}
headers := map[string]string{
	"Prefer": "return=minimal"
}
options := &msgraphsdk.DeltaRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
	Headers: headers,
}
result, err := graphClient.Groups().Delta()().GetWithRequestConfigurationAndResponseHandler(options, nil)


```