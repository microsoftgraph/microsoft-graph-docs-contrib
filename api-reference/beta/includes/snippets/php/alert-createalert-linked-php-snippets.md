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
$createAlertInput->setTitle('Suspicious PowerShell activity');
$createAlertInput->setSeverity(new AlertSeverity('medium'));
$createAlertInput->setDescription('PowerShell script execution was identified during analyst triage.');
$createAlertInput->setCategory('Execution');
$createAlertInput->setRecommendedActions('Review the script contents and isolate the affected device.');
$createAlertInput->setMitreTechniques(['T1059.001', 	]);
$createAlertInput->setLinkToIncident(42);
$createAlertInput->setIsExcludedFromCorrelation(false);
$entityDefinitionsEntityDefinition1 = new EntityDefinition();
$entityDefinitionsEntityDefinition1->setEntityType(new ManualAlertEntityType('device'));
$entityDefinitionsEntityDefinition1->setEntityIdentifier('deviceId');
$entityDefinitionsEntityDefinition1->setIdentifierValue('d1234567-abcd-4f01-8abc-890123456789');
$entityDefinitionsEntityDefinition1->setRole(new EntityDefinitionInputRole('impacted'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinition1;
$createAlertInput->setEntityDefinitions($entityDefinitionsArray);

$requestBody->setCreateAlertInput($createAlertInput);

$result = $graphServiceClient->security()->alerts_v2()->microsoftGraphSecurityCreateAlert()->post($requestBody)->wait();

```