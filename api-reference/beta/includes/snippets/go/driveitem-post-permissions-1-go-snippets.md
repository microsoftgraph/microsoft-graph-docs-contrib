---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPermission()
grantedToIdentitiesV2 := graph.NewSharePointIdentitySet()
application := graphmodels.NewIdentity()
id := "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
application.SetId(&id) 
displayName := "Contoso Time Manager App"
application.SetDisplayName(&displayName) 
grantedToIdentitiesV2.SetApplication(application)
requestBody.SetGrantedToIdentitiesV2(grantedToIdentitiesV2)
roles := []string {
	"write",
}
requestBody.SetRoles(roles)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissions, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Permissions().Post(context.Background(), requestBody, nil)


```