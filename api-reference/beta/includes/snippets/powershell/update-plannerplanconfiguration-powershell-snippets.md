---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerPlanConfiguration"
	DefaultLanguage = "en-us"
	Buckets = @(
		@{
			ExternalBucketId = "deliveryBucket"
		}
		@{
			ExternalBucketId = "storePickupBucket"
		}
		@{
			ExternalBucketId = "specialOrdersBucket"
		}
		@{
			ExternalBucketId = "returnProcessingBucket"
		}
	)
}

Update-MgBusinessScenarioPlannerPlanConfiguration -BusinessScenarioId $businessScenarioId -BodyParameter $params

```