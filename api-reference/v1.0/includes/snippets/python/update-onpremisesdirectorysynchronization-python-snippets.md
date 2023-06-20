---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnPremisesDirectorySynchronization()
configuration = OnPremisesDirectorySynchronizationConfiguration()
configurationaccidental_deletion_prevention = OnPremisesAccidentalDeletionPrevention()
configurationaccidental_deletion_prevention.synchronizationpreventiontype(OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount('onpremisesdirectorysynchronizationdeletionpreventiontype.enabledforcount'))

configurationaccidental_deletion_prevention.AlertThreshold = 500


configuration.accidental_deletion_prevention = configurationaccidental_deletion_prevention

request_body.configuration = configuration
features = OnPremisesDirectorySynchronizationFeature()
features.group_write_back_enabled = True


request_body.features = features



result = await client.directory.on_premise_synchronization.by_on_premise_synchronization_id('onPremisesDirectorySynchronization-id').patch(request_body = request_body)


```