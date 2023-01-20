---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var oAuth2PermissionGrant = new OAuth2PermissionGrant
{
	ClientId = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
	ConsentType = "AllPrincipal",
	ResourceId = "7ea9e944-71ce-443d-811c-71e8047b557a",
	Scope = "User.Read.All Group.Read.All"
};

await graphClient.Oauth2PermissionGrants
	.Request()
	.AddAsync(oAuth2PermissionGrant);

```