---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "extension-policy"
	Description = "test"
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
	CanExtend = $false
	RequestApprovalSettings = $null
	RequestorSettings = @{
		AcceptRequests = $true
		ScopeType = "AllExistingDirectorySubjects"
		AllowedRequestors = @(
		)
		IsOnBehalfAllowed = $false
	}
	AccessReviewSettings = $null
	Questions = @(
	)
	CustomExtensionHandlers = @(
		@{
			Stage = "assignmentRequestCreated"
			CustomExtension = @{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8"
			}
		}
		@{
			Stage = "assignmentRequestGranted"
			CustomExtension = @{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8"
			}
		}
	)
}

New-MgEntitlementManagementAccessPackageAssignmentPolicy -BodyParameter $params

```