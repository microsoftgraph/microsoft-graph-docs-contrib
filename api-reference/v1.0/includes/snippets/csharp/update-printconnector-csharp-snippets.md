---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrintConnector
{
	DisplayName = "ConnectorName",
	FullyQualifiedDomainName = "CONNECTOR-MACHINE",
	OperatingSystem = "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555",
	AppVersion = "0.19.7338.23496",
	Location = new PrinterLocation
	{
		Latitude = 1.1d,
		Longitude = 2.2d,
		AltitudeInMeters = 3,
	},
};
var result = await graphClient.Print.Connectors["{printConnector-id}"].PatchAsync(requestBody);


```