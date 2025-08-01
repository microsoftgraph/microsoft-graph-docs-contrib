---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	displayName = "Exchange Policy - Inadvertent data loss"
	"mailboxProtectionUnits@delta" = @(
		@{
			directoryObjectId = "1b014d8c-71fe-4d00-a01a-31850bc5b32c"
		}
		@{
			directoryObjectId = "2b014d8c-71fe-4d00-a01a-31850bc5b32c"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "99954f18-c8ec-4b62-85bf-cdf3b70b140e"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "4267e382-71a9-4c07-bef7-bda97e09c0d2"
		}
	)
}

Update-MgSolutionBackupRestoreExchangeProtectionPolicy -ExchangeProtectionPolicyId $exchangeProtectionPolicyId -BodyParameter $params

```