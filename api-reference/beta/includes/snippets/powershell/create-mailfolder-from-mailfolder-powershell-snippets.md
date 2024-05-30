---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	displayName = "displayName-value"
	isHidden = $true
}

# A UPN can also be used as -UserId.
New-MgBetaUserMailFolderChildFolder -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```