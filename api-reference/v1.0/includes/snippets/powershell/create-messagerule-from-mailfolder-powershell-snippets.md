---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	displayName = "From partner"
	sequence = 2
	isEnabled = $true
	conditions = @{
		senderContains = @(
			"adele"
		)
	}
	actions = @{
		forwardTo = @(
			@{
				emailAddress = @{
					name = "Alex Wilbur"
					address = "AlexW@contoso.onmicrosoft.com"
				}
			}
		)
		stopProcessingRules = $true
	}
}

# A UPN can also be used as -UserId.
New-MgUserMailFolderMessageRule -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```