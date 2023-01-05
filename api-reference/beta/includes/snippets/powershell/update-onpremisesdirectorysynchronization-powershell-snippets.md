---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	Configuration = @{
		AccidentalDeletionPrevention = @{
			SynchronizationPreventionType = "enabledForCount"
			AlertThreshold = 500
		}
		SynchronizationInterval = "PT30M"
		CustomerRequestedSynchronizationInterval = "PT1H"
	}
	Features = @{
		GroupWriteBackEnabled = $true
	}
}

Update-MgDirectoryOnPremisSynchronization -OnPremisesDirectorySynchronizationId $onPremisesDirectorySynchronizationId -BodyParameter $params

```