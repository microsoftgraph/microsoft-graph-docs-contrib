---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applicationTemplates = await graphClient.ApplicationTemplates
	.Request()
	.Filter("displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'")
	.GetAsync();

```