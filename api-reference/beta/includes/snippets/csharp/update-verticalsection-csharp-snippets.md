---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new VerticalSection
{
	Emphasis = SectionEmphasisType.Strong,
};
var result = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.VerticalSection.PatchAsync(requestBody);


```