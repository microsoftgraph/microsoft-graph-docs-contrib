---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPermission()
roles := []string {
	"write",
}
requestBody.SetRoles(roles)


identitySet := graphmodels.NewIdentitySet()
application := graphmodels.NewIdentity()
id := "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
application.SetId(&id) 
displayName := "Contoso Time Manager App"
application.SetDisplayName(&displayName) 
identitySet.SetApplication(application)

grantedToIdentities := []graphmodels.IdentitySetable {
	identitySet,
}
requestBody.SetGrantedToIdentities(grantedToIdentities)

permissions, err := graphClient.Sites().BySiteId("site-id").Permissions().Post(context.Background(), requestBody, nil)


```