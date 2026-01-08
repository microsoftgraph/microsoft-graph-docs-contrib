---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	isRead = "true"
	suppressReadReceipts = "true"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserMailFolderMessageReadState -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```