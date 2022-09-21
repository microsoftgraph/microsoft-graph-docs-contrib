---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
}

New-MgApplicationAppManagementPolicyByRef -ApplicationId $applicationId -BodyParameter $params

```