---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	requestedPermissions = @{
		"@odata.type" = "microsoft.graph.singleResourceAzurePermissionsDefinition"
		authorizationSystemInfo = @{
			authorizationSystemId = "87eefd90-95a3-480a-ba42-56ff299a05ee"
			authorizationSystemType = "AZURE"
		}
		actionInfo = @{
			"@odata.type" = "microsoft.graph.azureRolePermissionsDefinitionAction"
			roles = @(
			)
		}
		identityInfo = @{
			externalId = "alex@contoso.com"
			source = @{
				"@odata.type" = "microsoft.graph.edIdentitySource"
			}
			identityType = "user"
		}
		resourceId = "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee"
	}
	justification = "I need to do this because I want to some new azure roles"
	notes = "Pretty Pleaseeeee"
	scheduleInfo = @{
		expiration = @{
			duration = "PT1H"
		}
		recurrence = $null
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