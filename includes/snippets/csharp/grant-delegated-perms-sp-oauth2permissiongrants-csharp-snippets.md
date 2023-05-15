---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OAuth2PermissionGrant
{
	ClientId = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
	ConsentType = "Principal",
	ResourceId = "7ea9e944-71ce-443d-811c-71e8047b557a",
	PrincipalId = "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
	Scope = "User.Read.All Group.Read.All",
};
var result = await graphClient.Oauth2PermissionGrants.PostAsync(requestBody);


```