---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	EmailAddresses = @(
		"danas@contoso.onmicrosoft.com"
		"fannyd@contoso.onmicrosoft.com"
	)
	MailTipsOptions = "automaticReplies, mailboxFullStatus"
}

# A UPN can also be used as -UserId.
Get-MgBetaUserMailTip -UserId $userId -BodyParameter $params

```