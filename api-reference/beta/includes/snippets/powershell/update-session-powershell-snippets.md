---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.securityCopilot.session"
	displayName = "API Test: Who am I?"
}

Update-MgBetaSecurityCopilotWorkspaceSession -WorkspaceId $workspaceId -SessionId $sessionId -BodyParameter $params

```