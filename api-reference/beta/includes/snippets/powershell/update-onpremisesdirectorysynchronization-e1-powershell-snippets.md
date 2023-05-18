---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	configuration = @{
		accidentalDeletionPrevention = @{
			synchronizationPreventionType = "enabledForCount"
			alertThreshold = 500
		}
		synchronizationInterval = "PT30M"
		customerRequestedSynchronizationInterval = "PT1H"
	}
	features = @{
		groupWriteBackEnabled = $true
	}
}

Update-MgDirectoryOnPremisSynchronization -OnPremisesDirectorySynchronizationId $onPremisesDirectorySynchronizationId -BodyParameter $params

```