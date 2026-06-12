---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.manualAlert"
	title = "Malicious file detected on device"
	description = "Sandbox analysis revealed malicious behavior in downloaded file."
	category = "Execution"
	severity = "high"
	recommendedActions = "Isolate device, remove file, scan for additional IOCs"
	linkToIncident = 
	entityDefinitions = @(
		@{
			entityType = "file"
			entityIdentifier = "sha256"
			identifierValue = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
			role = "related"
		}
		@{
			entityType = "device"
			entityIdentifier = "deviceName"
			identifierValue = "DESKTOP-VICTIM01"
			role = "impacted"
		}
	)
}

New-MgBetaSecurityAlertV2 -BodyParameter $params

```