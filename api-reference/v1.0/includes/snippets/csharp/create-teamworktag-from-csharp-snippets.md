---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamworkTag
{
	DisplayName = "Finance",
	Members = new List<TeamworkTagMember>
	{
		new TeamworkTagMember
		{
			UserId = "92f6952f-61ca-4a94-8910-508a240bc167",
		},
		new TeamworkTagMember
		{
			UserId = "085d800c-b86b-4bfc-a857-9371ad1caf29",
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Tags.PostAsync(requestBody);


```