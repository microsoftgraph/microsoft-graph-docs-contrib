---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-sdk-go/directory"
	  //other-imports
)

requestBody := graphdirectory.NewRestorePostRequestBody()
additionalData := map[string]interface{}{
	autoReconcileProxyConflict := true
requestBody.SetAutoReconcileProxyConflict(&autoReconcileProxyConflict) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
restore, err := graphClient.Directory().DeletedItems().ByDirectoryObjectId("directoryObject-id").Restore().Post(context.Background(), requestBody, nil)


```