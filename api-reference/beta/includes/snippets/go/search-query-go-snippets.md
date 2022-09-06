---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewQueryPostRequestBody()


searchRequest := graphmodels.NewSearchRequest()
additionalData := map[string]interface{}{
	entityTypes := []string {
		"externalItem",

	}
	contentSources := []string {
		"/external/connections/connectionfriendlyname",

	}
query := graphmodels.New()
queryString := "contoso product"
query.SetQueryString(&queryString) 
	searchRequest.SetQuery(query)
	"from" : int32(0) , 
	"size" : int32(25) , 
	fields := []string {
		"title",
		"description",

	}
}
searchRequest.SetAdditionalData(additionalData)

requests := []graphmodels.SearchRequestable {
	searchRequest,

}
requestBody.SetRequests(requests)

result, err := graphClient.Search().Query().Post(requestBody)


```