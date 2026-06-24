---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	status = "disabled"
	queryCondition = @{
		queryText = "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'"
	}
}

Update-MgBetaSecurityRuleDetectionRule -DetectionRuleId $detectionRuleId -BodyParameter $params

```