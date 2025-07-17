---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BackupRestore

$params = @{
	"mailboxRestoreArtifacts@delta" = @(
		@{
			restorePoint = @{
				id = "1b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "inPlace"
		}
		@{
			restorePoint = @{
				id = "2b014d8c-71fe-4d00-a01a-31850bc5b32"
			}
			destinationType = "inPlace"
		}
		@{
			restorePoint = @{
				id = "3b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "inPlace"
		}
		@{
			restorePoint = @{
				id = "4b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "inPlace"
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
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "3667e382-71a9-4c07-bef7-bda97e09c0d2"
		}
	)
}

Update-MgBetaSolutionBackupRestoreExchangeRestoreSession -ExchangeRestoreSessionId $exchangeRestoreSessionId -BodyParameter $params

```