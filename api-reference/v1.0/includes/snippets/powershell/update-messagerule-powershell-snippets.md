---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	displayName = "Important from partner"
	actions = @{
		markImportance = "high"
	}
}

# A UPN can also be used as -UserId.
Update-MgUserMailFolderMessageRule -UserId $userId -MailFolderId $mailFolderId -MessageRuleId $messageRuleId -BodyParameter $params

```