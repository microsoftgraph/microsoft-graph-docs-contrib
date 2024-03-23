---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Clean up Phish email"
	description = "Delete email"
	severity = "medium"
	action = "softDelete"
	remediateSendersCopy = "false"
	analyzedEmails = @(
		@{
			id = "73ca4154-58d8-43d0-a890-08dc18c52e6d-1311265001240363512-1"
		}
		@{
			id = "73ca4154-58d8-43d0-a890-08dc18c52e6d-13805748846361900678-1"
		}
	)
}

Invoke-MgBetaRemediateSecurityCollaborationAnalyzedEmail -BodyParameter $params

```