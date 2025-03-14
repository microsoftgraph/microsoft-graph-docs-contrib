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

requestBody := graphmodels.NewWorkbookNamedItem()
type := "type-value"
requestBody.SetType(&type) 
scope := "scope-value"
requestBody.SetScope(&scope) 
comment := "comment-value"
requestBody.SetComment(&comment) 
value := graph.NewUntypedNode()
requestBody.SetValue(value)
visible := true
requestBody.SetVisible(&visible) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
names, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Names().ByWorkbookNamedItemId("workbookNamedItem-id").Patch(context.Background(), requestBody, nil)


```