---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcExportJob = await graphClient.DeviceManagement.VirtualEndpoint.Reports.ExportJobs["{cloudPcExportJob-id}"]
	.Request()
	.GetAsync();

```