---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Sites/Item/ContentTypes/Item/AssociateWithHubSites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAssociateWithHubSitesPostRequestBody()
hubSiteUrls := []string {
	"https://graph.microsoft.com/beta/sites/id",

}
requestBody.SetHubSiteUrls(hubSiteUrls)
propagateToExistingLists := false
requestBody.SetPropagateToExistingLists(&propagateToExistingLists) 

graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").AssociateWithHubSites().Post(context.Background(), requestBody, nil)


```