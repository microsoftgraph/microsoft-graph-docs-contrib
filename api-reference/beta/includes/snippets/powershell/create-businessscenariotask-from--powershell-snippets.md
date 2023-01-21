---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.businessScenarioTask"
	Title = "Customer order #12010"
	PercentComplete = 0
	Priority = 5
	Target = @{
		"@odata.type" = "microsoft.graph.businessScenarioGroupTarget"
		TaskTargetKind = "group"
		GroupId = "7a339254-4b2b-4410-b295-c890a16776ee"
	}
	BusinessScenarioProperties = @{
		ExternalObjectId = "Order#12010"
		ExternalContextId = "Warehouse-CA-36"
		ExternalObjectVersion = "000001"
		WebUrl = "https://ordertracking.contoso.com/view?id=12010"
		ExternalBucketId = "deliveryBucket"
	}
}

New-MgBusinessScenarioPlannerTask -BusinessScenarioId $businessScenarioId -BodyParameter $params

```