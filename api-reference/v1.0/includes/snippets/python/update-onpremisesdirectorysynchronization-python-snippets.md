---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.on_premises_directory_synchronization import OnPremisesDirectorySynchronization
from msgraph.generated.models.on_premises_directory_synchronization_configuration import OnPremisesDirectorySynchronizationConfiguration
from msgraph.generated.models.on_premises_accidental_deletion_prevention import OnPremisesAccidentalDeletionPrevention
from msgraph.generated.models.on_premises_directory_synchronization_deletion_prevention_type import OnPremisesDirectorySynchronizationDeletionPreventionType
from msgraph.generated.models.on_premises_directory_synchronization_feature import OnPremisesDirectorySynchronizationFeature
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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