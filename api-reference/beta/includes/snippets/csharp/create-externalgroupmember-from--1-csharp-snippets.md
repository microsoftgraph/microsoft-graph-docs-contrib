---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroupMember = new ExternalGroupMember
{
	Id = "e811976d-83df-4cbd-8b9b-5215b18aa874",
	Type = ExternalGroupMemberType.User,
	IdentitySource = IdentitySourceType.AzureActiveDirectory
};

await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members
	.Request()
	.AddAsync(externalGroupMember);

```