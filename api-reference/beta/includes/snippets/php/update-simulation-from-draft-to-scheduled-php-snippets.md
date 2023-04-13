---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Simulation();
$requestBody->setId('2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc');

$requestBody->setDisplayName('Graph Simulation');

$requestBody->setDurationInDays(7);

$requestBody->setAttackTechnique(new SimulationAttackTechnique('credentialharvesting'));

$requestBody->setAttackType(new SimulationAttackType('social'));

$requestBody->setStatus(new SimulationStatus('scheduled'));

$includedAccountTarget = new AccountTargetContent();
$includedAccountTarget->set@odatatype('#microsoft.graph.addressBookAccountTargetContent');

$includedAccountTarget->setType(new AccountTargetContentType('addressbook'));

$additionalData = [
		'accountTargetEmails' => ['faiza@contoso.com', ],
];
$includedAccountTarget->setAdditionalData($additionalData);



$requestBody->setIncludedAccountTarget($includedAccountTarget);
$excludedAccountTarget = new AccountTargetContent();
$excludedAccountTarget->set@odatatype('#microsoft.graph.addressBookAccountTargetContent');

$excludedAccountTarget->setType(new AccountTargetContentType('addressbook'));

$additionalData = [
	'accountTargetEmails' => ['sam@contoso.com', ],
];
$excludedAccountTarget->setAdditionalData($additionalData);



$requestBody->setExcludedAccountTarget($excludedAccountTarget);
$additionalData = [
'@odata.etag' => '\"0100aa9b-0000-0100-0000-6396fa270000\"', 
'payload@odata.bind' => 'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->attackSimulation()->simulationsById('simulation-id')->patch($requestBody);


```