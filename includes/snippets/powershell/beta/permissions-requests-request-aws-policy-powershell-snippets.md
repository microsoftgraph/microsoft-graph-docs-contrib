---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	requestedPermissions = @{
		"@odata.type" = "#microsoft.graph.awsPermissionsDefinition"
		authorizationSystemInfo = @{
			authorizationSystemId = "956987887735"
			authorizationSystemType = "AWS"
		}
		actionInfo = @{
			"@odata.type" = "microsoft.graph.awsPolicyPermissionsDefinitionAction"
			policies = @(
			)
			assignToRoleId = "arn:aws:aim::956987887735:role/saml-user"
		}
		identityInfo = @{
			externalId = "alex@contoso.com"
			source = @{
				"@odata.type" = "microsoft.graph.samlIdentitySource"
			}
			identityType = "user"
		}
	}
	justification = "I need to do this because I want to add a user to a group"
	notes = "Pretty Please"
	scheduleInfo = @{
		expiration = @{
			duration = "PT1H"
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