---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	requestedPermissions = @{
		"@odata.type" = "microsoft.graph.singleResourceGcpPermissionsDefinition"
		authorizationSystemInfo = @{
			authorizationSystemId = "carbide-bonsai-205017"
			authorizationSystemType = "GCP"
		}
		actionInfo = @{
			"@odata.type" = "microsoft.graph.gcpRolePermissionsDefinitionAction"
			roles = @(
				@{
					id = "roles/dialogflow.aamAdmin"
				}
			)
		}
		identityInfo = @{
			externalId = "alex@contoso.com"
			source = @{
				"@odata.type" = "microsoft.graph.edIdentitySource"
			}
			identityType = "user"
		}
		resourceId = "carbide-bonsai-205017"
	}
	justification = "I need to do this because I want to be an administrator"
	notes = "Pretty Pleaseeeee"
	scheduleInfo = @{
		startDateTime = $null
		expiration = @{
			duration = "PT1H"
		}
		recurrence = $null
	}
	ticketInfo = @{
		ticketNumber = "123456"
		ticketSystem = "ServiceNow"
		ticketSubmitterIdentityId = "alex@contoso.com"
		ticketApproverIdentityId = "alexmanager@contoso.com"
	}
}

New-MgBetaIdentityGovernancePermissionManagementScheduledPermissionRequest -BodyParameter $params

```