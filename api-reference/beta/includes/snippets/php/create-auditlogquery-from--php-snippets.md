---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuditLogQuery;
use Microsoft\Graph\Generated\Models\AuditLogRecordType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuditLogQuery();
$requestBody->setOdataType('#microsoft.graph.security.auditLogQuery');
$requestBody->setDisplayName('String');
$requestBody->setFilterStartDateTime(new \DateTime('String (timestamp)'));
$requestBody->setFilterEndDateTime(new \DateTime('String (timestamp)'));
$requestBody->setRecordTypeFilters([new AuditLogRecordType('string'),	]);
$requestBody->setKeywordFilter('String');
$requestBody->setOperationFilters(['String', 	]);
$requestBody->setUserPrincipalNameFilters(['String', 	]);
$requestBody->setIpAddressFilters(['String', 	]);
$requestBody->setObjectIdFilters(['String', 	]);
$requestBody->setAdministrativeUnitIdFilters(['String', 	]);
$requestBody->setStatus(new AuditLogQueryStatus('string'));
$additionalData = [
	'serviceFilter' => 'String',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->auditLog()->queries()->post($requestBody)->wait();

```