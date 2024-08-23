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

requestBody := graphmodels.NewWorkbookTableRow()
values := []graph.UntypedNodeable {
	 := []graph.UntypedNodeable {
 := float64(1)
requestBody.Set(&) 
 := float64(2)
requestBody.Set(&) 
 := float64(3)
requestBody.Set(&)
	}
	 := []graph.UntypedNodeable {
 := float64(4)
requestBody.Set(&) 
 := float64(5)
requestBody.Set(&) 
 := float64(6)
requestBody.Set(&)
	}
}
requestBody.SetValues(values)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
rows, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Rows().Post(context.Background(), requestBody, nil)


```