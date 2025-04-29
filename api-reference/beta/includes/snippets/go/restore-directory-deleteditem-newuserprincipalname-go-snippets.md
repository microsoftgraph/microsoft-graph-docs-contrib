---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

requestBody := graphdirectory.NewRestorePostRequestBody()
additionalData := map[string]interface{}{
	"newUserPrincipalName" : "johndoe@contoso.com", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
restore, err := graphClient.Directory().DeletedItems().ByDirectoryObjectId("directoryObject-id").Restore().Post(context.Background(), requestBody, nil)


```