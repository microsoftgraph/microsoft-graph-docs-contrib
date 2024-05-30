---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	displayName = "displayName-value"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserMailFolder -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```