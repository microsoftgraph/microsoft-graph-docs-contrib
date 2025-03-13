---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
}

New-MgBetaApplicationAppManagementPolicyByRef -ApplicationId $applicationId -BodyParameter $params

```