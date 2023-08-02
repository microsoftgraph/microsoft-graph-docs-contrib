---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

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

Update-MgBetaBusinessScenarioPlannerPlanConfigurationLocalization -BusinessScenarioId $businessScenarioId -PlannerPlanConfigurationLocalizationId $plannerPlanConfigurationLocalizationId -BodyParameter $params

```