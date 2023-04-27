---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teams.Item.Clone.ClonePostRequestBody
{
	DisplayName = "Library Assist",
	Description = "Self help community for library",
	MailNickname = "libassist",
	PartsToClone = ClonableTeamParts.Apps | ClonableTeamParts.Tabs | ClonableTeamParts.Settings | ClonableTeamParts.Channels | ClonableTeamParts.Members,
	Visibility = TeamVisibilityType.Public,
};
await graphClient.Teams["{team-id}"].Clone.PostAsync(requestBody);


```