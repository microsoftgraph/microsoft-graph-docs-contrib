---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsearch "github.com/microsoftgraph/msgraph-beta-sdk-go/search"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsearch.NewQueryPostRequestBody()


searchRequest := graphmodels.NewSearchRequest()
entityTypes := []graphmodels.EntityTypeable {
	entityType := graphmodels.CHATMESSAGE_ENTITYTYPE 
	searchRequest.SetEntityType(&entityType)
}
searchRequest.SetEntityTypes(entityTypes)
query := graphmodels.NewSearchQuery()
queryString := "test"
query.SetQueryString(&queryString) 
searchRequest.SetQuery(query)
from := int32(0)
searchRequest.SetFrom(&from) 
size := int32(25)
searchRequest.SetSize(&size) 

requests := []graphmodels.SearchRequestable {
	searchRequest,
}
requestBody.SetRequests(requests)

result, err := graphClient.Search().Query().Post(context.Background(), requestBody, nil)


```