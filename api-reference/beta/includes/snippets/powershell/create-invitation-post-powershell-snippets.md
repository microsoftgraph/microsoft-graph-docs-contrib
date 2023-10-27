---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	invitedUserEmailAddress = "admin@fabrikam.com"
	inviteRedirectUrl = "https://myapp.contoso.com"
}

New-MgBetaInvitation -BodyParameter $params

```