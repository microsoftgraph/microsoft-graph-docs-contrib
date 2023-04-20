---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.contentApproval"
	IsRevoked = $true
}

Update-MgWindowsUpdatesPolicyComplianceChange -UpdatePolicyId $updatePolicyId -ComplianceChangeId $complianceChangeId -BodyParameter $params

```