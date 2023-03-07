---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OAuth2PermissionGrant
{
	ClientId = "ef969797-201d-4f6b-960c-e9ed5f31dab5",
	ConsentType = "AllPrincipals",
	ResourceId = "943603e4-e787-4fe9-93d1-e30f749aae39",
	Scope = "DelegatedPermissionGrant.ReadWrite.All",
};
var result = await graphClient.Oauth2PermissionGrants.PostAsync(requestBody);


```