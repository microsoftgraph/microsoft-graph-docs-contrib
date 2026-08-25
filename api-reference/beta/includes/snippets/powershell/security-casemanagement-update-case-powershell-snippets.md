---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.caseManagement.genericCase"
	displayName = "Case MS-001"
	status = "Open"
	description = "Investigating potential credential compromise."
	assignedTo = "john.doe@contoso.com"
	priority = "high"
	dueDateTime = "2026-06-29T17:54:43Z"
	closingNotes = "Follow up with the account owner."
	customFields = @{
		"Customer impact" = @{
			"@odata.type" = "#microsoft.graph.security.caseManagement.customFieldStringValue"
			value = "Multiple executive mailboxes affected"
		}
	}
}

Update-MgBetaSecurityCaseManagementCase -CaseId $caseId -BodyParameter $params

```