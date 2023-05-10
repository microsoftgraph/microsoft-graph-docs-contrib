---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPrinterShare()
displayName := "PrinterShare Name"
requestBody.SetDisplayName(&displayName) 
allowAllUsers := false
requestBody.SetAllowAllUsers(&allowAllUsers) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/print/printers/{printerId}", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Print().Shares().ByShareId("printerShare-id").Patch(context.Background(), requestBody, nil)


```