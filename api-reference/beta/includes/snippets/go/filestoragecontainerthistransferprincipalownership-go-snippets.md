---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphstorage "github.com/microsoftgraph/msgraph-beta-sdk-go/storage"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphstorage.NewTransferPrincipalOwnershipPostRequestBody()
transferTo := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
additionalData := map[string]interface{}{
	"userPrincipalName" : "newowner@contoso.com", 
}
user.SetAdditionalData(additionalData)
transferTo.SetUser(user)
requestBody.SetTransferTo(transferTo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").TransferPrincipalOwnership().Post(context.Background(), requestBody, nil)


```