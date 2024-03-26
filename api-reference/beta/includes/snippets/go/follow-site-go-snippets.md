---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewAddPostRequestBody()


site := graphmodels.NewSite()
id := "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
site.SetId(&id) 
site1 := graphmodels.NewSite()
id := "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851"
site1.SetId(&id) 

value := []graphmodels.Siteable {
	site,
	site1,
}
requestBody.SetValue(value)

add, err := graphClient.Users().ByUserId("user-id").FollowedSites().Add().PostAsAddPostResponse(context.Background(), requestBody, nil)


```