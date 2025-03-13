---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-sdk-go/print"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphprint.NewCreateUploadSessionPostRequestBody()
properties := graphmodels.NewPrintDocumentUploadProperties()
documentName := "TestFile.pdf"
properties.SetDocumentName(&documentName) 
contentType := "application/pdf"
properties.SetContentType(&contentType) 
size := int64(4533322)
properties.SetSize(&size) 
requestBody.SetProperties(properties)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createUploadSession, err := graphClient.Print().Printers().ByPrinterId("printer-id").Jobs().ByPrintJobId("printJob-id").Documents().ByPrintDocumentId("printDocument-id").CreateUploadSession().Post(context.Background(), requestBody, nil)


```