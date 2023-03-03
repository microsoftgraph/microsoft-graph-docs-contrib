---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.contentApproval"
	Content = @{
		"@odata.type" = "#microsoft.graph.windowsUpdates.catalogContent"
		CatalogEntry = @{
			"@odata.type" = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry"
			Id = "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4"
		}
	}
	Schedule = @{
		StartDateTime = "String (timestamp)"
		GradualRollout = @{
			"@odata.type" = "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings"
			EndDateTime = "String (timestamp)"
		}
	}
}

New-MgWindowsUpdatesPolicyComplianceChange -UpdatePolicyId $updatePolicyId -BodyParameter $params

```