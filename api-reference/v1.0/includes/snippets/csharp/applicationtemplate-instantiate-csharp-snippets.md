---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Azure AD SAML Toolkit";

await graphClient.ApplicationTemplates["{applicationTemplate-id}"]
	.Instantiate(displayName)
	.Request()
	.PostAsync();

```