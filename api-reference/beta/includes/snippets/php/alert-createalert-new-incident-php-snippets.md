---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Alerts_v2\MicrosoftGraphSecurityCreateAlert\CreateAlertPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\CreateAlertInput;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertSeverity;
use Microsoft\Graph\Beta\Generated\Models\Security\EntityDefinition;
use Microsoft\Graph\Beta\Generated\Models\Security\ManualAlertEntityType;
use Microsoft\Graph\Beta\Generated\Models\Security\EntityDefinitionInputRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateAlertPostRequestBody();
$createAlertInput = new CreateAlertInput();
$createAlertInput->setTitle('Unauthorized access attempt');
$createAlertInput->setSeverity(new AlertSeverity('high'));
$createAlertInput->setDescription('Multiple failed login attempts from an unusual location.');
$createAlertInput->setCategory('InitialAccess');
$createAlertInput->setMitreTechniques(['T1078', 	]);
$createAlertInput->setIsExcludedFromCorrelation(false);
$entityDefinitionsEntityDefinition1 = new EntityDefinition();
$entityDefinitionsEntityDefinition1->setEntityType(new ManualAlertEntityType('user'));
$entityDefinitionsEntityDefinition1->setEntityIdentifier('userPrincipalName');
$entityDefinitionsEntityDefinition1->setIdentifierValue('admin@contoso.com');
$entityDefinitionsEntityDefinition1->setRole(new EntityDefinitionInputRole('impacted'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinition1;
$entityDefinitionsEntityDefinition2 = new EntityDefinition();
$entityDefinitionsEntityDefinition2->setEntityType(new ManualAlertEntityType('ip'));
$entityDefinitionsEntityDefinition2->setEntityIdentifier('address');
$entityDefinitionsEntityDefinition2->setIdentifierValue('198.51.100.42');
$entityDefinitionsEntityDefinition2->setRole(new EntityDefinitionInputRole('related'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinition2;
$createAlertInput->setEntityDefinitions($entityDefinitionsArray);

$requestBody->setCreateAlertInput($createAlertInput);

$result = $graphServiceClient->security()->alerts_v2()->microsoftGraphSecurityCreateAlert()->post($requestBody)->wait();

```