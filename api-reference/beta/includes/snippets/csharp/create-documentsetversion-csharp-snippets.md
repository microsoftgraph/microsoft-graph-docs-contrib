---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DocumentSetVersion
{
	Comment = "v1",
	ShouldCaptureMinorVersion = false,
};
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].DocumentSetVersions.PostAsync(requestBody);


```