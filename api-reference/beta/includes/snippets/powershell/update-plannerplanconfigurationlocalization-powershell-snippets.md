---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerPlanConfigurationLocalization"
	PlanTitle = "Order Tracking"
	Buckets = @(
		@{
			ExternalBucketId = "deliveryBucket"
			Name = "Deliveries"
		}
		@{
			ExternalBucketId = "storePickupBucket"
			Name = "Pickup"
		}
		@{
			ExternalBucketId = "specialOrdersBucket"
			Name = "Special Orders"
		}
		@{
			ExternalBucketId = "returnProcessingBucket"
			Name = "Customer Returns"
		}
	)
}

Update-MgBusinessScenarioPlannerPlanConfigurationLocalization -BusinessScenarioId $businessScenarioId -PlannerPlanConfigurationLocalizationId $plannerPlanConfigurationLocalizationId -BodyParameter $params

```