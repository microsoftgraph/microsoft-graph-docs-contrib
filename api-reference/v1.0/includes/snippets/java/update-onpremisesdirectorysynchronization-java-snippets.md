---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremisesDirectorySynchronization onPremisesDirectorySynchronization = new OnPremisesDirectorySynchronization();
OnPremisesDirectorySynchronizationConfiguration configuration = new OnPremisesDirectorySynchronizationConfiguration();
OnPremisesAccidentalDeletionPrevention accidentalDeletionPrevention = new OnPremisesAccidentalDeletionPrevention();
accidentalDeletionPrevention.setSynchronizationPreventionType(OnPremisesDirectorySynchronizationDeletionPreventionType.EnabledForCount);
accidentalDeletionPrevention.setAlertThreshold(500);
configuration.setAccidentalDeletionPrevention(accidentalDeletionPrevention);
onPremisesDirectorySynchronization.setConfiguration(configuration);
OnPremisesDirectorySynchronizationFeature features = new OnPremisesDirectorySynchronizationFeature();
features.setGroupWriteBackEnabled(true);
onPremisesDirectorySynchronization.setFeatures(features);
OnPremisesDirectorySynchronization result = graphClient.directory().onPremisesSynchronization().byOnPremisesDirectorySynchronizationId("{onPremisesDirectorySynchronization-id}").patch(onPremisesDirectorySynchronization);


```