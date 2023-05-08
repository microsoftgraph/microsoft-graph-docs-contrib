---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPrinterShare()
name := "name-value"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/print/printers/{id}", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Print().Shares().Post(context.Background(), requestBody, nil)


```