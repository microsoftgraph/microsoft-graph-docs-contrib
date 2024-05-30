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

requestBody := graphmodels.NewExtensionProperty()
name := "jobGroupTracker"
requestBody.SetName(&name) 
dataType := "String"
requestBody.SetDataType(&dataType) 
targetObjects := []string {
	"User",
}
requestBody.SetTargetObjects(targetObjects)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
extensionProperties, err := graphClient.Applications().ByApplicationId("application-id").ExtensionProperties().Post(context.Background(), requestBody, nil)


```