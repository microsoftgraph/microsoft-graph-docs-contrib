---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Search/Query"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewQueryPostRequestBody()


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

result, err := graphClient.Search().Query().Post(context.Background(), requestBody, nil)


```