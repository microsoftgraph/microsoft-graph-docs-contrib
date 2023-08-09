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
	entityType := graphmodels.EXTERNALITEM_ENTITYTYPE 
	searchRequest.SetEntityType(&entityType)
}
searchRequest.SetEntityTypes(entityTypes)
contentSources := []string {
	"/external/connections/connectionfriendlyname",
}
searchRequest.SetContentSources(contentSources)
query := graphmodels.NewSearchQuery()
queryString := "contoso product"
query.SetQueryString(&queryString) 
searchRequest.SetQuery(query)
from := int32(0)
searchRequest.SetFrom(&from) 
size := int32(25)
searchRequest.SetSize(&size) 
fields := []string {
	"title",
	"description",
}
searchRequest.SetFields(fields)

requests := []graphmodels.SearchRequestable {
	searchRequest,
}
requestBody.SetRequests(requests)

query, err := graphClient.Search().Query().Post(context.Background(), requestBody, nil)


```