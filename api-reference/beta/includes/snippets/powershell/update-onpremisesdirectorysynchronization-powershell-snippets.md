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
	}
	Features = @{
		GroupWriteBackEnabled = $true
	}
}

Update-MgDirectoryOnPremisSynchronization -OnPremisesDirectorySynchronizationId $onPremisesDirectorySynchronizationId -BodyParameter $params

```