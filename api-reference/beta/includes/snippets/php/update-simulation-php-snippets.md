---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Simulation();
$requestBody->setDisplayName('Graph Simulation');

$requestBody->setDurationInDays(7);

$requestBody->setAttackTechnique(new SimulationAttackTechnique('credentialHarvesting'));

$requestBody->setAttackType(new SimulationAttackType('social'));

$requestBody->setStatus(new SimulationStatus('scheduled'));

$includedAccountTarget = new AddressBookAccountTargetContent();
$includedAccountTarget->setOdataType('#microsoft.graph.addressBookAccountTargetContent');

$includedAccountTarget->setType(new AccountTargetContentType('addressBook'));

$includedAccountTarget->setAccountTargetEmails(['faiza@contoso.com', 	]);


$requestBody->setIncludedAccountTarget($includedAccountTarget);
$excludedAccountTarget = new AddressBookAccountTargetContent();
$excludedAccountTarget->setOdataType('#microsoft.graph.addressBookAccountTargetContent');

$excludedAccountTarget->setType(new AccountTargetContentType('addressBook'));

$excludedAccountTarget->setAccountTargetEmails(['sam@contoso.com', 	]);


$requestBody->setExcludedAccountTarget($excludedAccountTarget);
$additionalData = [
		'@odata.etag' => '\"0100aa9b-0000-0100-0000-6396fa270000\"', 
		'payload@odata.bind' => 'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->attackSimulation()->simulations()->bySimulationId('simulation-id')->patch($requestBody);


```