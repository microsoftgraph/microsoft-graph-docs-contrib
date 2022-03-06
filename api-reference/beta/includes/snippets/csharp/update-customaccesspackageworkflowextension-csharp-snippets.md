---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customAccessPackageWorkflowExtension = new CustomAccessPackageWorkflowExtension
{
	DisplayName = "test_action_0124_email",
	Description = "this is for graph testing only"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].CustomAccessPackageWorkflowExtensions["{customAccessPackageWorkflowExtension-id}"]
	.Request()
	.PutAsync(customAccessPackageWorkflowExtension);

```