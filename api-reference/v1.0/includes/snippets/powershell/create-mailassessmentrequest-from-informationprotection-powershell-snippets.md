---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.mailAssessmentRequest"
	recipientEmail = "tifc@contoso.com"
	expectedAssessment = "block"
	category = "spam"
	messageUri = "https://graph.microsoft.com/v1.0/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
}

New-MgInformationProtectionThreatAssessmentRequest -BodyParameter $params

```