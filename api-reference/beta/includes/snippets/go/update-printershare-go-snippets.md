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
displayName := "ShareName"
requestBody.SetDisplayName(&displayName) 
allowAllUsers := true
requestBody.SetAllowAllUsers(&allowAllUsers) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/print/printers/{id}", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Print().Shares().ByShareId("printerShare-id").Patch(context.Background(), requestBody, nil)


```