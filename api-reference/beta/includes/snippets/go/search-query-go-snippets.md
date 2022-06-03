---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewRequestsRequestBody()
requestBody.SetRequests( []SearchRequest {
	msgraphsdk.NewSearchRequest(),
	SetAdditionalData(map[string]interface{}{
		"entityTypes":  []String {
			"externalItem",
		}
		"contentSources":  []String {
			"/external/connections/connectionfriendlyname",
		}
		"from": ,
		"size": ,
		"fields":  []String {
			"title",
			"description",
		}
	}
}
result, err := graphClient.Search().Query().Post(requestBody)


```