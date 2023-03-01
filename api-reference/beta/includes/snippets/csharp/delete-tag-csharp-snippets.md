---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Compliance.Ediscovery.Cases["{case-id}"].Tags["{tag-id}"].DeleteAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Forcedelete = true;
});


```