---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.urlThreatSubmission"
	category = "phishing"
	webUrl = "http://phishing.contoso.com"
}

New-MgSecurityThreatSubmissionUrlThreat -BodyParameter $params

```