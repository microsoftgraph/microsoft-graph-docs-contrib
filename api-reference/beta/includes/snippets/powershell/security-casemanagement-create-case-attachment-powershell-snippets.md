---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.caseManagement.attachment"
	displayName = "Case MS-001 Attachment"
	description = "Screenshot of suspicious sign-in activity"
	fileSize = 1000
	fileExtension = "jpeg"
}

New-MgBetaSecurityCaseManagementCaseAttachment -CaseId $caseId -BodyParameter $params

```