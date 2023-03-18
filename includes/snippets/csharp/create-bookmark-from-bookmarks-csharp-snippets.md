---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Search.Bookmark
{
	DisplayName = "Contoso Install Site",
	WebUrl = "http://www.contoso.com/",
	Description = "Try or buy Contoso for Home or Business and view product information",
	Keywords = new Microsoft.Graph.Beta.Models.Search.AnswerKeyword
	{
		Keywords = new List<string>
		{
			"Contoso",
			"install",
		},
		ReservedKeywords = new List<string>
		{
			"Contoso",
		},
		MatchSimilarKeywords = true,
	},
	State = Microsoft.Graph.Beta.Models.Search.AnswerState.Published,
};
var result = await graphClient.Search.Bookmarks.PostAsync(requestBody);


```