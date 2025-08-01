---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	"siteRestoreArtifacts@delta" = @(
		@{
			restorePoint = @{
				id = "1b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "new"
		}
		@{
			restorePoint = @{
				id = "2b014d8c-71fe-4d00-a01a-31850bc5b32"
			}
			destinationType = "new"
		}
		@{
			restorePoint = @{
				id = "3b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "new"
		}
		@{
			restorePoint = @{
				id = "4b014d8c-71fe-4d00-a01a-31850bc5b32c"
			}
			destinationType = "new"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "959ba739-70b5-43c4-8c90-b2c22014f18a"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "959ba739-70b5-43c4-8c90-b2c22014f18b"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "959ba739-70b5-43c4-8c90-b2c22014f18c"
		}
	)
}

Update-MgSolutionBackupRestoreSharePointRestoreSession -SharePointRestoreSessionId $sharePointRestoreSessionId -BodyParameter $params

```