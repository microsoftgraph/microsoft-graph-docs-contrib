---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.print.printers.item.jobs.item.documents.item.createuploadsession.CreateUploadSessionPostRequestBody createUploadSessionPostRequestBody = new com.microsoft.graph.print.printers.item.jobs.item.documents.item.createuploadsession.CreateUploadSessionPostRequestBody();
PrintDocumentUploadProperties properties = new PrintDocumentUploadProperties();
properties.setDocumentName("TestFile.pdf");
properties.setContentType("application/pdf");
properties.setSize(4533322L);
createUploadSessionPostRequestBody.setProperties(properties);
var result = graphClient.print().printers().byPrinterId("{printer-id}").jobs().byPrintJobId("{printJob-id}").documents().byPrintDocumentId("{printDocument-id}").createUploadSession().post(createUploadSessionPostRequestBody);


```