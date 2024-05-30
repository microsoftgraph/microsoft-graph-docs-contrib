---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerPlanConfiguration"
	defaultLanguage = "en-us"
	buckets = @(
		@{
			externalBucketId = "deliveryBucket"
		}
		@{
			externalBucketId = "storePickupBucket"
		}
		@{
			externalBucketId = "specialOrdersBucket"
		}
		@{
			externalBucketId = "returnProcessingBucket"
		}
	)
}

Update-MgBetaBusinessScenarioPlannerPlanConfiguration -BusinessScenarioId $businessScenarioId -BodyParameter $params

```