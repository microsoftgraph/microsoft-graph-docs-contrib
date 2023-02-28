---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewQueryPostRequestBody()


searchRequest := graphmodels.NewSearchRequest()
entityTypes := []graphmodels.EntityTypeable {
	entityType := graphmodels.CHATMESSAGE_ENTITYTYPE 
	searchRequest.SetEntityType(&entityType) 

}
searchRequest.SetEntityTypes(entityTypes)
query := graphmodels.NewSearchQuery()
queryString := "contoso from:bob to:alice sent>2022-07-14"
query.SetQueryString(&queryString) 
searchRequest.SetQuery(query)
from := int32(0)
searchRequest.SetFrom(&from) 
size := int32(15)
searchRequest.SetSize(&size) 
enableTopResults := true
searchRequest.SetEnableTopResults(&enableTopResults) 

requests := []graphmodels.SearchRequestable {
	searchRequest,

}
requestBody.SetRequests(requests)

result, err := graphClient.Search().MicrosoftGraphQuery().Post(context.Background(), requestBody, nil)


```