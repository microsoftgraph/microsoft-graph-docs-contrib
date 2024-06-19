---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-sdk-go/drives"
	  //other-imports
)

requestBody := graphdrives.NewAddPostRequestBody()
index := int32(5)
requestBody.SetIndex(&index) 
values := []graph.Arrayable {
	 := []graph.Numberable {
 := int32(1)
requestBody.Set(&) 
 := int32(2)
requestBody.Set(&) 
 := int32(3)
requestBody.Set(&)
	}
	 := []graph.Numberable {
 := int32(4)
requestBody.Set(&) 
 := int32(5)
requestBody.Set(&) 
 := int32(6)
requestBody.Set(&)
	}
}
requestBody.SetValues(values)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
add, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Tables().ByWorkbookTableId("workbookTable-id").Rows().Add().Post(context.Background(), requestBody, nil)


```