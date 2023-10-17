---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.urlThreatSubmission"
	category = "phishing"
	webUrl = "http://phishing.contoso.com"
}

New-MgBetaSecurityThreatSubmissionUrlThreat -BodyParameter $params

```