---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Case MS-001 Attachment"
	description = "Screenshot of suspicious sign-in activity"
}

Update-MgBetaSecurityCaseManagementCaseAttachment -CaseId $caseId -AttachmentId $attachmentId -BodyParameter $params

```