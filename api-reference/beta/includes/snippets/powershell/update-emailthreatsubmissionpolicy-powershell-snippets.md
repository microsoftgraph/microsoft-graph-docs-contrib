---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	isReportToMicrosoftEnabled = $false
}

Update-MgSecurityThreatSubmissionEmailThreatSubmissionPolicy -EmailThreatSubmissionPolicyId $emailThreatSubmissionPolicyId -BodyParameter $params

```