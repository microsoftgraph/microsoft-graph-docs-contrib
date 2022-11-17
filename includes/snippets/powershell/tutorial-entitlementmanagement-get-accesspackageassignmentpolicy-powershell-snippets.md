---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	AccessPackageId = "88203d16-0e31-41d4-87b2-dd402f1435e9"
	DisplayName = "Specific users"
	Description = "Specific users can request assignment"
	AccessReviewSettings = $null
	DurationInDays = 30
	RequestorSettings = @{
		ScopeType = "SpecificDirectorySubjects"
		AcceptRequests = $true
		AllowedRequestors = @(
			@{
				"@odata.type" = "#microsoft.graph.singleUser"
				IsBackup = $false
				Id = "007d1c7e-7fa8-4e33-b678-5e437acdcddc"
				Description = "Requestor1"
			}
		)
	}
	RequestApprovalSettings = @{
		IsApprovalRequired = $false
		IsApprovalRequiredForExtension = $false
		IsRequestorJustificationRequired = $false
		ApprovalMode = "NoApproval"
		ApprovalStages = @(
		)
	}
}

New-MgEntitlementManagementAccessPackageAssignmentPolicy -BodyParameter $params

```