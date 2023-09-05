---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-beta-sdk-go/print"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphprint.NewCreateUploadSessionPostRequestBody()
properties := graphmodels.NewPrintDocumentUploadProperties()
documentName := "TestFile.pdf"
properties.SetDocumentName(&documentName) 
contentType := "application/pdf"
properties.SetContentType(&contentType) 
size := int64(4533322)
properties.SetSize(&size) 
requestBody.SetProperties(properties)

createUploadSession, err := graphClient.Print().Shares().ByPrinterShareId("printerShare-id").Jobs().ByPrintJobId("printJob-id").Documents().ByPrintDocumentId("printDocument-id").CreateUploadSession().Post(context.Background(), requestBody, nil)


```