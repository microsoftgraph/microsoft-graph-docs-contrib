---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ApplicationTemplates.Item.Instantiate.InstantiatePostRequestBody
{
	DisplayName = "Azure AD SAML Toolkit",
};
var result = await graphClient.ApplicationTemplates["{applicationTemplate-id}"].Instantiate.PostAsync(requestBody);


```