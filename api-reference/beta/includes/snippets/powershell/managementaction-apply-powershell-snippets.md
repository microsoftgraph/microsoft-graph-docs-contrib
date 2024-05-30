---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	tenantId = "String"
	tenantGroupId = "String"
	managementTemplateId = "String"
}

Add-MgBetaTenantRelationshipManagedTenantManagementAction -ManagementActionId $managementActionId -BodyParameter $params

```