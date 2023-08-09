---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Print.Printers.Item.Jobs.Item.Documents.Item.CreateUploadSession.CreateUploadSessionPostRequestBody
{
	Properties = new PrintDocumentUploadProperties
	{
		DocumentName = "TestFile.pdf",
		ContentType = "application/pdf",
		Size = 4533322L,
	},
};
var result = await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"].Documents["{printDocument-id}"].CreateUploadSession.PostAsync(requestBody);


```