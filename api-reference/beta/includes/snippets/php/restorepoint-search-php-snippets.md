---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\RestorePoints\Search\SearchPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TimePeriod;
use Microsoft\Graph\Beta\Generated\Models\RestorePointPreference;
use Microsoft\Graph\Beta\Generated\Models\RestorePointTags;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SearchPostRequestBody();
$requestBody->setProtectionUnitIds(['23014d8c-71fe-4d00-a01a-31850bc5b42a', '43014d8c-71fe-4d00-a01a-31850bc5b42b', '63014d8c-71fe-4d00-a01a-31850bc5b42c', '83014d8c-71fe-4d00-a01a-31850bc5b42d', 	]);
$protectionTimePeriod = new TimePeriod();
$protectionTimePeriod->setStartDateTime(new \DateTime('2021-01-01T00:00:00Z'));
$protectionTimePeriod->setEndDateTime(new \DateTime('2021-01-08T00:00:00Z'));
$requestBody->setProtectionTimePeriod($protectionTimePeriod);
$requestBody->setRestorePointPreference(new RestorePointPreference('latest'));
$requestBody->setTags(new RestorePointTags('fastRestore'));

$result = $graphServiceClient->solutions()->backupRestore()->restorePoints()->search()->post($requestBody)->wait();

```