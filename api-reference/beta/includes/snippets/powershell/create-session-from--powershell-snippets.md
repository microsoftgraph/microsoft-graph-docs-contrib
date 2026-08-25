---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.securityCopilot.session"
	displayName = "Who am I"
}

New-MgBetaSecurityCopilotWorkspaceSession -WorkspaceId $workspaceId -BodyParameter $params

```