---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroupMember = new ExternalGroupMember
{
	Id = "1431b9c38ee647f6a",
	Type = ExternalGroupMemberType.Group,
	IdentitySource = IdentitySourceType.External
};

await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members
	.Request()
	.AddAsync(externalGroupMember);

```