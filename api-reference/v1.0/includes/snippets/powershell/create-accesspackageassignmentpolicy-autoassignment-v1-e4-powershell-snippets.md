---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "A Policy With Questions"
	description = ""
	allowedTargetScope = "allMemberUsers"
	expiration = @{
		type = "noExpiration"
	}
	requestorSettings = @{
		enableTargetsToSelfAddAccess = "true"
		enableTargetsToSelfUpdateAccess = "true"
		enableTargetsToSelfRemoveAccess = "true"
	}
	requestApprovalSettings = @{
		isApprovalRequiredForAdd = "true"
		isApprovalRequiredForUpdate = "true"
		stages = @(
			@{
				durationBeforeAutomaticDenial = "P7D"
				isApproverJustificationRequired = "false"
				isEscalationEnabled = "false"
				fallbackPrimaryApprovers = @(
				)
				escalationApprovers = @(
				)
				fallbackEscalationApprovers = @(
				)
				primaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.singleUser"
						userId = "08a551cb-575a-4343-b914-f6e42798bd20"
					}
				)
			}
		)
	}
	questions = @(
		@{
			"@odata.type" = "#microsoft.graph.accessPackageMultipleChoiceQuestion"
			sequence = "1"
			isRequired = "true"
			isAnswerEditable = "true"
			text = "What country are you working from?"
			isMultipleSelectionAllowed = "false"
			choices = @(
				@{
					"@odata.type" = "microsoft.graph.accessPackageAnswerChoice"
					actualValue = "KE"
					text = "Kenya"
				}
				@{
					"@odata.type" = "microsoft.graph.accessPackageAnswerChoice"
					actualValue = "US"
					text = "United States"
				}
				@{
					"@odata.type" = "microsoft.graph.accessPackageAnswerChoice"
					actualValue = "GY"
					text = "Guyana"
				}
				@{
					"@odata.type" = "microsoft.graph.accessPackageAnswerChoice"
					actualValue = "BD"
					text = "Bangladesh"
				}
				@{
					"@odata.type" = "microsoft.graph.accessPackageAnswerChoice"
					actualValue = "JP"
					text = "Japan"
				}
			)
		}
		@{
			"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
			sequence = "2"
			isRequired = "true"
			isAnswerEditable = "true"
			text = "What do you do for work?"
			localizations = @(
				@{
					languageCode = "fr-CA"
					text = "Que fais-tu comme travail?"
				}
			)
			isSingleLineQuestion = "false"
			regexPattern = "[a-zA-Z]+[a-zA-Z\s]*"
		}
	)
	accessPackage = @{
		id = "977c7ff4-ef8f-4910-9d31-49048ddf3120"
	}
}

New-MgEntitlementManagementAssignmentPolicy -BodyParameter $params

```