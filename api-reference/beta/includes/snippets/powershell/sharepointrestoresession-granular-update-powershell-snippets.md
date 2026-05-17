---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BackupRestore

$params = @{
	"granularSiteRestoreArtifacts@delta" = @(
		@{
			browseSessionId = "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE"
			id = "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,8d1ba53f-986a-409f-bf90-3bf55dbd7526"
		}
		@{
			"@removed" = @{
				reason = "changed"
			}
			id = "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2"
		}
	)
}

Update-MgBetaSolutionBackupRestoreSharePointRestoreSession -SharePointRestoreSessionId $sharePointRestoreSessionId -BodyParameter $params

```