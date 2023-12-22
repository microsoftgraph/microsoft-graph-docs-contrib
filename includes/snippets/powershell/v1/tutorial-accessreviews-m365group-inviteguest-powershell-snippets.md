---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	invitedUserDisplayName = "John Doe (Tailspin Toys)"
	invitedUserEmailAddress = "john@tailspintoys.com"
	sendInvitationMessage = $false
	inviteRedirectUrl = "https://myapps.microsoft.com"
}

New-MgInvitation -BodyParameter $params

```