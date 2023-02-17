---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	IsGroupOwnerManagementEnabled = $true
}

Update-MgIdentityGovernanceAccessReviewPolicy -BodyParameter $params

```