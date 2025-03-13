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

requestBody := graphmodels.NewPrintTaskTrigger()
event := graphmodels.JOBSTARTED_PRINTEVENT 
requestBody.SetEvent(&event) 
additionalData := map[string]interface{}{
	"definition@odata.bind" : "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
taskTriggers, err := graphClient.Print().Printers().ByPrinterId("printer-id").TaskTriggers().Post(context.Background(), requestBody, nil)


```