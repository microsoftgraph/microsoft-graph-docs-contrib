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

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "newExtensionName", 
	"myCustomString" : "Contoso data", 
	myCustomBool := false
requestBody.SetMyCustomBool(&myCustomBool) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
extensions, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Extensions().ByExtensionId("extension-id").Patch(context.Background(), requestBody, nil)


```