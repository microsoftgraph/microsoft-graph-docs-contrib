---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsites.NewAssociateWithHubSitesPostRequestBody()
hubSiteUrls := []string {
	"https://graph.microsoft.com/v1.0/sites/{site-id}",
}
requestBody.SetHubSiteUrls(hubSiteUrls)
propagateToExistingLists := false
requestBody.SetPropagateToExistingLists(&propagateToExistingLists) 

graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").AssociateWithHubSites().Post(context.Background(), requestBody, nil)


```