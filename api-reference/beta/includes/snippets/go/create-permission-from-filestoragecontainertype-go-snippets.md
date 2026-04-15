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
roles := []string {
	"owner",
}
requestBody.SetRoles(roles)
grantedToV2 := graphmodels.NewSharePointIdentitySet()
user := graphmodels.NewIdentity()
id := "11111111-1111-1111-1111-111111111111"
user.SetId(&id) 
grantedToV2.SetUser(user)
requestBody.SetGrantedToV2(grantedToV2)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissions, err := graphClient.Storage().FileStorage().ContainerTypes().ByFileStorageContainerTypeId("fileStorageContainerType-id").Permissions().Post(context.Background(), requestBody, nil)


```