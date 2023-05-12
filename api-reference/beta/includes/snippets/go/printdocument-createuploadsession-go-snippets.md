---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Print/Shares/Item/Jobs/Item/Documents/Item/CreateUploadSession"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateUploadSessionPostRequestBody()
properties := graphmodels.NewPrintDocumentUploadProperties()
documentName := "TestFile.pdf"
properties.SetDocumentName(&documentName) 
contentType := "application/pdf"
properties.SetContentType(&contentType) 
size := int64(4533322)
properties.SetSize(&size) 
requestBody.SetProperties(properties)

result, err := graphClient.Print().Shares().ByShareId("printerShare-id").Jobs().ByJobId("printJob-id").Documents().ByDocumentId("printDocument-id").CreateUploadSession().Post(context.Background(), requestBody, nil)


```