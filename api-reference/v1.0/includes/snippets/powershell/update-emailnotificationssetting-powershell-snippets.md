---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	isEnabled = $true
	additionalEvents = "restoreAndPolicyUpdates"
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

Update-MgSolutionBackupRestoreEmailNotificationSetting -BodyParameter $params

```