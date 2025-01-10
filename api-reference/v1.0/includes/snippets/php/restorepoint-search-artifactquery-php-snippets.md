---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Solutions\BackupRestore\RestorePoints\Search\SearchPostRequestBody;
use Microsoft\Graph\Generated\Models\ArtifactQuery;
use Microsoft\Graph\Generated\Models\RestorableArtifact;
use Microsoft\Graph\Generated\Models\TimePeriod;
use Microsoft\Graph\Generated\Models\RestorePointPreference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SearchPostRequestBody();
$artifactQuery = new ArtifactQuery();
$artifactQuery->setQueryExpression('(Sender -eq \'abc@contoso.com\') -and (Subject -like \'*Check email*\' -or Subject -like \' Important\') -and (HasAttachment -eq \'true\') -and (PitrDumpsterActionTriggeredTime -gt \'{2024-09-21T08:20:00.0000000Z}\')');
$artifactQuery->setArtifactType(new RestorableArtifact('message'));
$requestBody->setArtifactQuery($artifactQuery);
$requestBody->setProtectionUnitIds(['23014d8c-71fe-4d00-a01a-31850bc5b42a', 	]);
$protectionTimePeriod = new TimePeriod();
$protectionTimePeriod->setStartDateTime(new \DateTime('2021-01-01T00:00:00Z'));
$requestBody->setProtectionTimePeriod($protectionTimePeriod);
$requestBody->setRestorePointPreference(new RestorePointPreference('oldest'));

$result = $graphServiceClient->solutions()->backupRestore()->restorePoints()->search()->post($requestBody)->wait();

```