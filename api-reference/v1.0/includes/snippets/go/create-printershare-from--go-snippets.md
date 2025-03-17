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

requestBody := graphmodels.NewPrinterShare()
displayName := "ShareName"
requestBody.SetDisplayName(&displayName) 
allowAllUsers := false
requestBody.SetAllowAllUsers(&allowAllUsers) 
additionalData := map[string]interface{}{
	"printer@odata.bind" : "https://graph.microsoft.com/v1.0/print/printers/{printerId}", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
shares, err := graphClient.Print().Shares().Post(context.Background(), requestBody, nil)


```