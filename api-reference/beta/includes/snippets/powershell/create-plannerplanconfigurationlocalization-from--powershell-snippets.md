---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.plannerPlanConfigurationLocalization"
	languageTag = "en-us"
	planTitle = "Order Tracking"
	buckets = @(
		@{
			"@odata.type" = "microsoft.graph.plannerPlanConfigurationBucketLocalization"
			externalBucketId = "deliveryBucket"
			name = "Deliveries"
		}
		@{
			"@odata.type" = "microsoft.graph.plannerPlanConfigurationBucketLocalization"
			externalBucketId = "storePickupBucket"
			name = "Pickup"
		}
		@{
			"@odata.type" = "microsoft.graph.plannerPlanConfigurationBucketLocalization"
			externalBucketId = "specialOrdersBucket"
			name = "Special Orders"
		}
		@{
			"@odata.type" = "microsoft.graph.plannerPlanConfigurationBucketLocalization"
			externalBucketId = "returnProcessingBucket"
			name = "Customer Returns"
		}
	)
}

New-MgBusinessScenarioPlannerPlanConfigurationLocalization -BusinessScenarioId $businessScenarioId -BodyParameter $params

```