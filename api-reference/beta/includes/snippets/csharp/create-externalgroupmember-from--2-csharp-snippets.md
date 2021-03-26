---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroupMember = new ExternalGroupMember
{
	Id = "e5477431-1038-484e-bf69-1dfedb97a110",
	Type = ExternalGroupMemberType.Group,
	IdentitySource = IdentitySourceType.AzureActiveDirectory
};

await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members
	.Request()
	.AddAsync(externalGroupMember);

```