---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BackupRestore

$params = @{
	isEnabled = "true"
	additionalEvents = "restoreAndPolicyUpdates"
	recipients = @{
		recipients = @{
			role = "custom"
			customRecipients = @(
				@{
					email = "amala@contoso.com"
				}
				@{
					email = "conrad@contoso.com"
				}
				@{
					email = "lothar@contoso.com"
				}
			)
		}
	}
}

Update-MgBetaSolutionBackupRestoreEmailNotificationSetting -BodyParameter $params

```