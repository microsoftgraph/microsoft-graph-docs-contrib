---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRoles = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{accessPackageCatalog-id}"].AccessPackageResourceRoles
	.Request()
	.Filter("(originSystem eq 'AadGroup' and accessPackageResource/id eq '4a1e21c5-8a76-4578-acb1-641160e076e8' and displayName eq 'Member')")
	.Expand("accessPackageResource/id%20eq%20'4a1e21c5-8a76-4578-acb1-641160e076e8'%20and%20displayName%20eq%20'Member')")
	.GetAsync();

```