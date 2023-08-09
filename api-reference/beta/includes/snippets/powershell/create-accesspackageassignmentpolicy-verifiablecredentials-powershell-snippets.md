---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "policy-with-verified-id"
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
	)
	verifiableCredentialSettings = @{
		credentialTypes = @(
			@{
				issuers = @(
					"did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>..."
				)
				credentialType = "VerifiedCredentialExpert"
			}
		)
	}
}

New-MgBetaEntitlementManagementAccessPackageAssignmentPolicy -BodyParameter $params

```