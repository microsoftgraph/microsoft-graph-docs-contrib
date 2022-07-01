---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authoredNote = new AuthoredNote
{
	Content = new ItemBody
	{
		Content = "Please take a look at the files tagged with follow up",
		ContentType = BodyType.Text
	}
};

await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].Notes
	.Request()
	.AddAsync(authoredNote);

```