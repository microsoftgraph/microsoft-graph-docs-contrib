---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var additionalAccess = await graphClient.IdentityGovernance.EntitlementManagement.Assignments
	.AdditionalAccess("2506aef1-3929-4d24-a61e-7c8b83d95e6f","d5d99728-8c0b-4ede-83d2-cf9b0e8dabfb")
	.Request()
	.Expand("target")
	.GetAsync();

```