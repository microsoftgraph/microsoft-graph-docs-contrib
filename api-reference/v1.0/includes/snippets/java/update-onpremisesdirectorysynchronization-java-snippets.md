---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnPremisesDirectorySynchronization onPremisesDirectorySynchronization = new OnPremisesDirectorySynchronization();
OnPremisesDirectorySynchronizationConfiguration configuration = new OnPremisesDirectorySynchronizationConfiguration();
OnPremisesAccidentalDeletionPrevention accidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention();
accidentalDeletionPrevention.synchronizationPreventionType = OnPremisesDirectorySynchronizationDeletionPreventionType.ENABLED_FOR_COUNT;
accidentalDeletionPrevention.alertThreshold = 500;
configuration.accidentalDeletionPrevention = accidentalDeletionPrevention;
onPremisesDirectorySynchronization.configuration = configuration;
OnPremisesDirectorySynchronizationFeature features = new OnPremisesDirectorySynchronizationFeature();
features.groupWriteBackEnabled = true;
onPremisesDirectorySynchronization.features = features;

graphClient.directory().onPremisesSynchronization("{id}")
	.buildRequest()
	.patch(onPremisesDirectorySynchronization);

```