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
siteGroup := graphmodels.NewSharePointIdentity()
id := "10"
siteGroup.SetId(&id) 
displayName := "Internal Collaborators"
siteGroup.SetDisplayName(&displayName) 
grantedToIdentitiesV2.SetSiteGroup(siteGroup)
requestBody.SetGrantedToIdentitiesV2(grantedToIdentitiesV2)
roles := []string {
	"write",
}
requestBody.SetRoles(roles)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissions, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Permissions().Post(context.Background(), requestBody, nil)


```