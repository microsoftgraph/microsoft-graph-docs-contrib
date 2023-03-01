---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Printer
{
	Name = "PrinterName",
	Location = new PrinterLocation
	{
		Latitude = 1.1d,
		Longitude = 2.2d,
		AltitudeInMeters = 3,
	},
};
var result = await graphClient.Print.Printers["{printer-id}"].PatchAsync(requestBody);


```