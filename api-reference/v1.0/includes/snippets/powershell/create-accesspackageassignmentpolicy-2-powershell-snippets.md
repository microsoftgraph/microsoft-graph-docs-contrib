---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "policy for external access requests"
	Description = "policy for users from connected organizations to request access, with two stages of approval."
	AllowedTargetScope = "allConfiguredConnectedOrganizationUsers"
	SpecificAllowedTargets = @(
	)
	Expiration = @{
		Type = "noExpiration"
	}
	RequestorSettings = @{
		EnableTargetsToSelfAddAccess = $true
		EnableTargetsToSelfUpdateAccess = $true
		EnableTargetsToSelfRemoveAccess = $true
		AllowCustomAssignmentSchedule = $false
		EnableOnBehalfRequestorsToAddAccess = $false
		EnableOnBehalfRequestorsToUpdateAccess = $false
		EnableOnBehalfRequestorsToRemoveAccess = $false
		OnBehalfRequestors = @(
		)
	}
	RequestApprovalSettings = @{
		IsApprovalRequiredForAdd = $true
		IsApprovalRequiredForUpdate = $false
		Stages = @(
			@{
				DurationBeforeAutomaticDenial = "P14D"
				IsApproverJustificationRequired = $false
				IsEscalationEnabled = $false
				DurationBeforeEscalation = "PT0S"
				PrimaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.internalSponsors"
					}
				)
				FallbackPrimaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.singleUser"
						UserId = "7deff43e-1f17-44ef-9e5f-d516b0ba11d4"
					}
					@{
						"@odata.type" = "#microsoft.graph.groupMembers"
						GroupId = "1623f912-5e86-41c2-af47-39dd67582b66"
					}
				)
				EscalationApprovers = @(
				)
				FallbackEscalationApprovers = @(
				)
			}
			@{
				DurationBeforeAutomaticDenial = "P14D"
				IsApproverJustificationRequired = $false
				IsEscalationEnabled = $false
				DurationBeforeEscalation = "PT0S"
				PrimaryApprovers = @(
				)
				FallbackPrimaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.singleUser"
						UserId = "46184453-e63b-4f20-86c2-c557ed5d5df9"
					}
					@{
						"@odata.type" = "#microsoft.graph.groupMembers"
						GroupId = "1623f912-5e86-41c2-af47-39dd67582b66"
					}
				)
				EscalationApprovers = @(
				)
				FallbackEscalationApprovers = @(
				)
			}
		)
	}
	AccessPackage = @{
		Id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"
	}
}

New-MgEntitlementManagementAssignmentPolicy -BodyParameter $params

```