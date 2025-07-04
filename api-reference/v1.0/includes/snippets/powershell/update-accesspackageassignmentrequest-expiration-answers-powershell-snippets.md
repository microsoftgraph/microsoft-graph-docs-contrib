---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "userUpdate"
	answers = @(
		@{
			"@odata.type" = "#microsoft.graph.accessPackageAnswerString"
			value = "My updated answer."
			answeredQuestion = @{
				"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
				id = "0d31cc60-968e-4f92-955b-443fed03d6f6"
			}
		}
	)
	schedule = @{
		startDateTime = [System.DateTime]::Parse("2024-09-18T20:49:16.17Z")
		recurrence = $null
		expiration = @{
			endDateTime = [System.DateTime]::Parse("2024-10-18T20:49:15.17Z")
			duration = $null
			type = "afterDateTime"
		}
	}
	assignment = @{
		id = "329f8dac-8062-4c1b-a9b8-39b7132f9bff"
	}
}

New-MgEntitlementManagementAssignmentRequest -BodyParameter $params

```