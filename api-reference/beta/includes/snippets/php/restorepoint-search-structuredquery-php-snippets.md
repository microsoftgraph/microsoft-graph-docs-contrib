---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\RestorePoints\Search\SearchPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ArtifactQuery;
use Microsoft\Graph\Beta\Generated\Models\TimePeriod;
use Microsoft\Graph\Beta\Generated\Models\RestorePointPreference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SearchPostRequestBody();
$artifactQuery = new ArtifactQuery();
$additionalData = [
	'structuredQueryExpression' => [
		'senders' => [
'abc@contoso.com', ],
		'subjects' => [
'Check email', 'Important', ],
		'hasAttachment' => true,
		'items' => [
'email', ],
	],
];
$artifactQuery->setAdditionalData($additionalData);
$requestBody->setArtifactQuery($artifactQuery);
$requestBody->setProtectionUnitIds(['23014d8c-71fe-4d00-a01a-31850bc5b42a', 	]);
$protectionTimePeriod = new TimePeriod();
$protectionTimePeriod->setStartDateTime(new \DateTime('2021-01-01T00:00:00Z'));
$protectionTimePeriod->setEndDateTime(new \DateTime('2021-01-30T00:00:00Z'));
$requestBody->setProtectionTimePeriod($protectionTimePeriod);
$requestBody->setRestorePointPreference(new RestorePointPreference('oldest'));

$result = $graphServiceClient->solutions()->backupRestore()->restorePoints()->search()->post($requestBody)->wait();

```