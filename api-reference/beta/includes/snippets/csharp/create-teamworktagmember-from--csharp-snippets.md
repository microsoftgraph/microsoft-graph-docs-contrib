---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamworkTagMember
{
	UserId = "97f62344-57dc-409c-88ad-c4af14158ff5",
};
var result = await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"].Members.PostAsync(requestBody);


```