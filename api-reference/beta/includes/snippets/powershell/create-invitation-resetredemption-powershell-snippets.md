---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	invitedUserEmailAddress = "AdeleV@fabrikam.com"
	inviteRedirectUrl = "https://myapp.contoso.com"
	invitedUser = @{
		id = "264e6d50-eaec-461e-b187-873b1bcf855f"
	}
	resetRedemption = $true
}

New-MgBetaInvitation -BodyParameter $params

```