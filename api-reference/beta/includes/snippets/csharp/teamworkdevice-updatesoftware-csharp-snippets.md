---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var softwareType = TeamworkSoftwareType.TeamsClient;

var softwareVersion = "1.0.96.22";

await graphClient.Teamwork.Devices["{teamworkDevice-id}"]
	.UpdateSoftware(softwareType,softwareVersion)
	.Request()
	.PostAsync();

```