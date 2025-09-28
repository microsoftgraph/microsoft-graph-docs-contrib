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

requestBody := graphmodels.NewWorkbookComment()
content := "This is my comment."
requestBody.SetContent(&content) 
contentType := "plain"
requestBody.SetContentType(&contentType) 
additionalData := map[string]interface{}{
	"cellAddress" : "Sheet1!A1", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
comments, err := graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").Workbook().Comments().Post(context.Background(), requestBody, nil)


```