---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.securityCopilot.prompt"
	type = "prompt"
	content = "who am I"
}

New-MgBetaSecurityCopilotWorkspaceSessionPrompt -WorkspaceId $workspaceId -SessionId $sessionId -BodyParameter $params

```