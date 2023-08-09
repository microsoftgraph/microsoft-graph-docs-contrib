---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"
}

New-MgApplicationAppManagementPolicyByRef -ApplicationId $applicationId -BodyParameter $params

```