---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	IsReportToMicrosoftEnabled = $false
}

Update-MgSecurityThreatSubmissionEmailThreatSubmissionPolicy -EmailThreatSubmissionPolicyId $emailThreatSubmissionPolicyId -BodyParameter $params

```