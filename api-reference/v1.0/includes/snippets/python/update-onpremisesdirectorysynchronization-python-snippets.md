---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_premises_directory_synchronization import OnPremisesDirectorySynchronization
from msgraph.generated.models.on_premises_directory_synchronization_configuration import OnPremisesDirectorySynchronizationConfiguration
from msgraph.generated.models.on_premises_accidental_deletion_prevention import OnPremisesAccidentalDeletionPrevention
from msgraph.generated.models.on_premises_directory_synchronization_feature import OnPremisesDirectorySynchronizationFeature

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnPremisesDirectorySynchronization(
	configuration = OnPremisesDirectorySynchronizationConfiguration(
		accidental_deletion_prevention = OnPremisesAccidentalDeletionPrevention(
			synchronization_prevention_type = OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount,
			alert_threshold = 500,
		),
	),
	features = OnPremisesDirectorySynchronizationFeature(
		group_write_back_enabled = True,
	),
)

result = await graph_client.directory.on_premises_synchronization.by_on_premises_directory_synchronization_id('onPremisesDirectorySynchronization-id').patch(request_body)


```