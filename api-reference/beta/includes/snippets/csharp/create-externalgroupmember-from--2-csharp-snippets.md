---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroupMember = new Microsoft.Graph.ExternalConnectors.ExternalGroupMember
{
	Id = "e5477431-1038-484e-bf69-1dfedb97a110",
	Type = Microsoft.Graph.ExternalConnectors.ExternalGroupMemberType.User
};

await graphClient.External.Connections["{externalConnectors.externalConnection-id}"].Groups["{externalConnectors.externalGroup-id}"].Members
	.Request()
	.AddAsync(externalGroupMember);

```