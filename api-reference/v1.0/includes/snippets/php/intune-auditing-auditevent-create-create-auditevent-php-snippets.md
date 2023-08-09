---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuditEvent();
$requestBody->setOdataType('#microsoft.graph.auditEvent');

$requestBody->setDisplayName('Display Name value');

$requestBody->setComponentName('Component Name value');

$actor = new AuditActor();
$actor->setOdataType('microsoft.graph.auditActor');

$actor->setAuditActorType('Audit Actor Type value');

$actor->setUserPermissions(['User Permissions value', 	]);

$actor->setApplicationId('Application Id value');

$actor->setApplicationDisplayName('Application Display Name value');

$actor->setUserPrincipalName('User Principal Name value');

$actor->setServicePrincipalName('Service Principal Name value');

$actor->setIpAddress('Ip Address value');

$actor->setUserId('User Id value');

$additionalData = [
		'type' => 'Type value', 
];
$actor->setAdditionalData($additionalData);



$requestBody->setActor($actor);
$requestBody->setActivity('Activity value');

$requestBody->setActivityDateTime(new \DateTime('2016-12-31T23:59:51.6363086-08:00'));

$requestBody->setActivityType('Activity Type value');

$requestBody->setActivityOperationType('Activity Operation Type value');

$requestBody->setActivityResult('Activity Result value');

$requestBody->setCorrelationId('52effe71-fe71-52ef-71fe-ef5271feef52');

$resourcesAuditResource1 = new AuditResource();
$resourcesAuditResource1->setOdataType('microsoft.graph.auditResource');

$resourcesAuditResource1->setDisplayName('Display Name value');

$modifiedPropertiesAuditProperty1 = new AuditProperty();
$modifiedPropertiesAuditProperty1->setOdataType('microsoft.graph.auditProperty');

$modifiedPropertiesAuditProperty1->setDisplayName('Display Name value');

$modifiedPropertiesAuditProperty1->setOldValue('Old Value value');

$modifiedPropertiesAuditProperty1->setNewValue('New Value value');


$modifiedPropertiesArray []= $modifiedPropertiesAuditProperty1;
$resourcesAuditResource1->setModifiedProperties($modifiedPropertiesArray);


$resourcesAuditResource1->setAuditResourceType('Audit Resource Type value');

$resourcesAuditResource1->setResourceId('Resource Id value');

$additionalData = [
	'type' => 'Type value', 
];
$resourcesAuditResource1->setAdditionalData($additionalData);



$resourcesArray []= $resourcesAuditResource1;
$requestBody->setResources($resourcesArray);


$requestBody->setCategory('Category value');



$result = $graphServiceClient->deviceManagement()->auditEvents()->post($requestBody);


```