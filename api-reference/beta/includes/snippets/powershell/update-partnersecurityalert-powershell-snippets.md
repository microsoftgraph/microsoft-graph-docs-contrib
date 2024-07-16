---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	status = "resolved"
	resolvedReason = "fraud"
}

Update-MgBetaSecurityPartnerSecurityAlert -PartnerSecurityAlertId $partnerSecurityAlertId -BodyParameter $params

```