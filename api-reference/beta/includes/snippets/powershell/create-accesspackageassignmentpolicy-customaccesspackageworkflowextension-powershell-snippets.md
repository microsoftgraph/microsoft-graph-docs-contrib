---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "extension-policy"
	description = "test"
	accessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
	canExtend = $false
	requestApprovalSettings = $null
	requestorSettings = @{
		acceptRequests = $true
		scopeType = "AllExistingDirectorySubjects"
		allowedRequestors = @(
		)
		isOnBehalfAllowed = $false
	}
	accessReviewSettings = $null
	questions = @(
	)
	customExtensionHandlers = @(
		@{
			stage = "assignmentRequestCreated"
			customExtension = @{
				id = "219f57b6-7983-45a1-be01-2c228b7a43f8"
			}
		}
		@{
			stage = "assignmentRequestGranted"
			customExtension = @{
				id = "219f57b6-7983-45a1-be01-2c228b7a43f8"
			}
		}
	)
}

New-MgEntitlementManagementAccessPackageAssignmentPolicy -BodyParameter $params

```