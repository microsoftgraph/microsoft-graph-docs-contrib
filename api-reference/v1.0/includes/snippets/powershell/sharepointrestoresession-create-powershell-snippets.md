---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	siteRestoreArtifacts = @(
		@{
			restorePoint = @{
				"@odata.id" = "1f1fccc3-a642-4f61-bf49-f37b9a888279"
			}
			destinationType = "inPlace"
		}
		@{
			restorePoint = @{
				"@odata.id" = "1f1fccc3-a642-4f61-bf49-f37b9a888280"
			}
			destinationType = "inPlace"
		}
	)
}

New-MgSolutionBackupRestoreSharePointRestoreSession -BodyParameter $params

```