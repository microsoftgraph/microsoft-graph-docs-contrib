---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OnPremisesDirectorySynchronization(
	configuration = OnPremisesDirectorySynchronizationConfiguration(
		accidental_deletion_prevention = OnPremisesAccidentalDeletionPrevention(
			synchronization_prevention_type = OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount,
			alert_threshold = 500,
		),
		synchronization_interval = "PT30M",
		customer_requested_synchronization_interval = "PT1H",
	),
	features = OnPremisesDirectorySynchronizationFeature(
		group_write_back_enabled = True,
	),
)

result = await graph_client.directory.on_premise_synchronization.by_on_premise_synchronization_id('onPremisesDirectorySynchronization-id').patch(body = request_body)


```