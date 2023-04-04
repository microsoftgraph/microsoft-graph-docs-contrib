---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OAuth2PermissionGrant
{
	Scope = "User.ReadBasic.All Group.ReadWrite.All",
};
var result = await graphClient.Oauth2PermissionGrants["{oAuth2PermissionGrant-id}"].PatchAsync(requestBody);


```