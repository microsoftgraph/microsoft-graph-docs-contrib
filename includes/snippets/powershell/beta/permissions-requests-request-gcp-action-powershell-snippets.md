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
			"@odata.type" = "microsoft.graph.gcpActionPermissionsDefinitionAction"
			actions = @(
			"aiplatform:dataitems"
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
justification = "I need to do this because I want to code my own chat GPT-3 bot on GCP"
notes = "Pretty Pleaseeeee"
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