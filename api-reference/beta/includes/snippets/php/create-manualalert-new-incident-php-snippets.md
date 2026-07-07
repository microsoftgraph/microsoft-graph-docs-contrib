---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\ManualAlert;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;
use Microsoft\Graph\Beta\Generated\Models\Security\EntityDefinitionInput;
use Microsoft\Graph\Beta\Generated\Models\Security\ManualAlertEntityType;
use Microsoft\Graph\Beta\Generated\Models\Security\EntityDefinitionInputRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManualAlert();
$requestBody->setOdataType('#microsoft.graph.security.manualAlert');
$requestBody->setTitle('Suspicious login from TOR exit node');
$requestBody->setDescription('User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.');
$requestBody->setCategory('InitialAccess');
$requestBody->setSeverity(new AlertSeverity('high'));
$requestBody->setRecommendedActions('Reset user credentials, enable MFA, review recent user activity');
$requestBody->setMitreTechniques(['T1078', 	]);
$entityDefinitionsEntityDefinitionInput1 = new EntityDefinitionInput();
$entityDefinitionsEntityDefinitionInput1->setEntityType(new ManualAlertEntityType('user'));
$entityDefinitionsEntityDefinitionInput1->setEntityIdentifier('userPrincipalName');
$entityDefinitionsEntityDefinitionInput1->setIdentifierValue('john.doe@contoso.com');
$entityDefinitionsEntityDefinitionInput1->setRole(new EntityDefinitionInputRole('impacted'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinitionInput1;
$entityDefinitionsEntityDefinitionInput2 = new EntityDefinitionInput();
$entityDefinitionsEntityDefinitionInput2->setEntityType(new ManualAlertEntityType('ip'));
$entityDefinitionsEntityDefinitionInput2->setEntityIdentifier('address');
$entityDefinitionsEntityDefinitionInput2->setIdentifierValue('185.220.101.50');
$entityDefinitionsEntityDefinitionInput2->setRole(new EntityDefinitionInputRole('related'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinitionInput2;
$requestBody->setEntityDefinitions($entityDefinitionsArray);


$result = $graphServiceClient->security()->alerts_v2()->post($requestBody)->wait();

```