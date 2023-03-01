---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OAuth2PermissionGrant
{
	Scope = "User.Read.All",
};
var result = await graphClient.Oauth2PermissionGrants["{oAuth2PermissionGrant-id}"].PatchAsync(requestBody);


```