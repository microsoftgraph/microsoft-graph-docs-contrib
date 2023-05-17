---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Print/Printers/Item/Jobs/Item/Abort"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAbortPostRequestBody()
reason := "String"
requestBody.SetReason(&reason) 

graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByJobId("printJob-id").Abort().Post(context.Background(), requestBody, nil)


```