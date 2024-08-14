---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\RestorePoints\Search\SearchPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TimePeriod;
use Microsoft\Graph\Beta\Generated\Models\RestorePointPreference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SearchPostRequestBody();
$requestBody->setProtectionUnitIds(['23014d8c-71fe-4d00-a01a-31850bc5b42a', 	]);
$protectionTimePeriod = new TimePeriod();
$protectionTimePeriod->setStartDateTime(new \DateTime('2021-01-01T00:00:00Z'));
$requestBody->setProtectionTimePeriod($protectionTimePeriod);
$requestBody->setRestorePointPreference(new RestorePointPreference('oldest'));
$additionalData = [
	'artifactQuery' => [
		'queryExpression' => '((subject -contains ‘Finance’)  -or  (subject -contains ‘Legal’)) -and (sender -eq \'alex@contoso.com\') -and (recipient -eq \'carol@contoso.com\') -and hasAttachment -eq true',
		'artifactType' => 'message',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->solutions()->backupRestore()->restorePoints()->search()->post($requestBody)->wait();

```