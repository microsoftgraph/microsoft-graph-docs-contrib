---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	requestedPermissions = @{
		"@odata.type" = "microsoft.graph.awsPermissionsDefinition"
		authorizationSystemInfo = @{
			authorizationSystemId = "956987887735"
			authorizationSystemType = "AWS"
		}
		actionInfo = @{
			"@odata.type" = "microsoft.graph.awsActionsPermissionsDefinitionAction"
			statements = @(
			)
			assignToRoleId = "arn:aws:iam::956987887735:role/ck-saml-power-user"
		}
		identityInfo = @{
			externalId = "rsn:alex@contoso.com"
			source = @{
				"@odata.type" = "microsoft.graph.samlIdentitySource"
			}
			identityType = "user"
		}
	}
	justification = "I need to do this because I want to access S3 resources"
	notes = "Please"
	scheduleInfo = @{
		startDateTime = [System.DateTime]::Parse("2023-02-08T12:15:00Z")
		expiration = @{
			duration = "PT1H"
		}
		recurrence = @{
			pattern = @{
				dayOfMonth = 5
				daysOfWeek = @(
				)
				interval = 1
				reccurencePatternType = "absoluteMonthly"
			}
			range = @{
				startDate = "2023-02-08"
				reccurenceRangeType = "noEnd"
			}
		}
	}
	ticketInfo = @{
		ticketNumber = "INC1234567"
		ticketSystem = "ServiceNow"
		ticketSubmitterIdentityId = "alex@contoso.com"
		ticketApproverIdentityId = "alexmanager@contoso.com"
	}
}

New-MgBetaIdentityGovernancePermissionManagementScheduledPermissionRequest -BodyParameter $params

```