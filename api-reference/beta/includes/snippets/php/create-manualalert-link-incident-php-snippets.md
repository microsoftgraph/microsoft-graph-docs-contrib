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
$requestBody->setTitle('Malicious file detected on device');
$requestBody->setDescription('Sandbox analysis revealed malicious behavior in downloaded file.');
$requestBody->setCategory('Execution');
$requestBody->setSeverity(new AlertSeverity('high'));
$requestBody->setRecommendedActions('Isolate device, remove file, scan for additional IOCs');
$requestBody->setLinkToIncident(28282);
$entityDefinitionsEntityDefinitionInput1 = new EntityDefinitionInput();
$entityDefinitionsEntityDefinitionInput1->setEntityType(new ManualAlertEntityType('file'));
$entityDefinitionsEntityDefinitionInput1->setEntityIdentifier('sha256');
$entityDefinitionsEntityDefinitionInput1->setIdentifierValue('e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855');
$entityDefinitionsEntityDefinitionInput1->setRole(new EntityDefinitionInputRole('related'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinitionInput1;
$entityDefinitionsEntityDefinitionInput2 = new EntityDefinitionInput();
$entityDefinitionsEntityDefinitionInput2->setEntityType(new ManualAlertEntityType('device'));
$entityDefinitionsEntityDefinitionInput2->setEntityIdentifier('deviceName');
$entityDefinitionsEntityDefinitionInput2->setIdentifierValue('DESKTOP-VICTIM01');
$entityDefinitionsEntityDefinitionInput2->setRole(new EntityDefinitionInputRole('impacted'));
$entityDefinitionsArray []= $entityDefinitionsEntityDefinitionInput2;
$requestBody->setEntityDefinitions($entityDefinitionsArray);


$result = $graphServiceClient->security()->alerts_v2()->post($requestBody)->wait();

```