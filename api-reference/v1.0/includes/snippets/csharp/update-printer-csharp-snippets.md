---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Printer
{
	Location = new PrinterLocation
	{
		Latitude = 1.1d,
		Longitude = 2.2d,
		AltitudeInMeters = 3,
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"name" , "PrinterName"
		},
	},
};
var result = await graphClient.Print.Printers["{printer-id}"].PatchAsync(requestBody);


```