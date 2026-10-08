---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	acl = @(
		@{
			type = "user"
			value = "e811976d-83df-4cbd-8b9b-5215b18aa874"
			accessType = "grant"
			identitySource = "azureActiveDirectory"
		}
		@{
			type = "group"
			value = "14m1b9c38qe647f6a"
			accessType = "deny"
			identitySource = "external"
		}
	)
	properties = @{
		title = "Fix issues with Payment gateway"
		priority = 
		assignee = "john@contoso.com"
	}
	content = @{
		value = "Payment gateway module has the following tasks to be completed..."
		type = "text"
	}
	informationProtectionLabel = @{
		sensitivityLabelId = "b6a62c3c-d471-4a3e-9f5f-93c1f928b02d"
	}
}

Set-MgBetaExternalConnectionItem -ExternalConnectionId $externalConnectionId -ExternalItemId $externalItemId -BodyParameter $params

```