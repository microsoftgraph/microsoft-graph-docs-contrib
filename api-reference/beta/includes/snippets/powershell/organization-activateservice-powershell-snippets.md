---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	SkuId = "6fd2c87f-b296-42f0-b197-1e91e994b900"
	ServicePlanId = "a23b959c-7ce8-4e57-9140-b90eb88a9e97"
}

Initialize-MgOrganizationService -OrganizationId $organizationId -BodyParameter $params

```