---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var informationProtectionPolicySetting = await graphClient.Users["{user-id}"].Security.InformationProtection.LabelPolicySettings
	.Request()
	.GetAsync();

```