---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPermission()
roles := []string {
	"writer",
}
requestBody.SetRoles(roles)
grantedToV2 := graphmodels.NewSharePointIdentitySet()
user := graphmodels.NewIdentity()
additionalData := map[string]interface{}{
	"userPrincipalName" : "jacob@fabrikam.com", 
}
user.SetAdditionalData(additionalData)
grantedToV2.SetUser(user)
requestBody.SetGrantedToV2(grantedToV2)
additionalData := map[string]interface{}{
	"@microsoft.graph.conflictBehavior" : "replace", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
permissions, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").Permissions().Post(context.Background(), requestBody, nil)


```