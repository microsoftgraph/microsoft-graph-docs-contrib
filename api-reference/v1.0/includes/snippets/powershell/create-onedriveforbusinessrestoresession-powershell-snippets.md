---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.BackupRestore

$params = @{
	driveRestoreArtifacts = @(
		@{
			restorePoint = @{
				"@odata.id" = "1f1fccc3-a642-4f61-bf49-f37b9a888279"
			}
			destinationType = "new"
		}
		@{
			restorePoint = @{
				"@odata.id" = "1f1fccc3-a642-4f61-bf49-f37b9a888280"
			}
			destinationType = "new"
		}
	)
}

New-MgSolutionBackupRestoreOneDriveForBusinessRestoreSession -BodyParameter $params

```