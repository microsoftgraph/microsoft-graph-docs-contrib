---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

using var requestBody = new MemoryStream(); //stream to upload

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveBulkActionStatusReport.PostAsRetrieveBulkActionStatusReportPostResponseAsync(requestBody);


```