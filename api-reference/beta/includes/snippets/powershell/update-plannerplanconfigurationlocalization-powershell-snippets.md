---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerPlanConfigurationLocalization"
	planTitle = "Order Tracking"
	buckets = @(
		@{
			externalBucketId = "deliveryBucket"
			name = "Deliveries"
		}
		@{
			externalBucketId = "storePickupBucket"
			name = "Pickup"
		}
		@{
			externalBucketId = "specialOrdersBucket"
			name = "Special Orders"
		}
		@{
			externalBucketId = "returnProcessingBucket"
			name = "Customer Returns"
		}
	)
}

Update-MgBusinessScenarioPlannerPlanConfigurationLocalization -BusinessScenarioId $businessScenarioId -PlannerPlanConfigurationLocalizationId $plannerPlanConfigurationLocalizationId -BodyParameter $params

```