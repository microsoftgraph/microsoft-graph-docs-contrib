---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "New Policy"
	Description = "policy for assignment"
	AllowedTargetScope = "notSpecified"
	SpecificAllowedTargets = @(
	)
	Expiration = @{
		EndDateTime = $null
		Duration = $null
		Type = "noExpiration"
	}
	RequestorSettings = @{
		EnableTargetsToSelfAddAccess = $false
		EnableTargetsToSelfUpdateAccess = $false
		EnableTargetsToSelfRemoveAccess = $false
		AllowCustomAssignmentSchedule = $true
		EnableOnBehalfRequestorsToAddAccess = $false
		EnableOnBehalfRequestorsToUpdateAccess = $false
		EnableOnBehalfRequestorsToRemoveAccess = $false
		OnBehalfRequestors = @(
		)
	}
	RequestApprovalSettings = @{
		IsApprovalRequiredForAdd = $false
		IsApprovalRequiredForUpdate = $false
		Stages = @(
		)
	}
	AccessPackage = @{
		Id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"
	}
}

New-MgEntitlementManagementAssignmentPolicy -BodyParameter $params

```