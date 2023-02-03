---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Simulation();
$requestBody->setDisplayName('Graph Simulation');

$requestBody->setPayloadDeliveryPlatform(new PayloadDeliveryPlatform('email'));

$requestBody->setDurationInDays(7);

$requestBody->setAttackTechnique(new SimulationAttackTechnique('credentialharvesting'));

$requestBody->setAttackType(new SimulationAttackType('social'));

$requestBody->setStatus(new SimulationStatus('scheduled'));

$requestBody->setCompletionDateTime(new DateTime('2022-09-16T06:13:08.4297612Z'));

$requestBody->setLaunchDateTime(new DateTime('2022-09-05T06:13:08.4297612Z'));

$includedAccountTarget = new AccountTargetContent();
$includedAccountTarget->set@odatatype('#microsoft.graph.addressBookAccountTargetContent');

$includedAccountTarget->setType(new AccountTargetContentType('addressbook'));

$additionalData = [
'accountTargetEmails' => ['john@contoso.com', ],
];
$includedAccountTarget->setAdditionalData($additionalData);



$requestBody->setIncludedAccountTarget($includedAccountTarget);
$additionalData = [
'payload@odata.bind' => 'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a', 
];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->security()->attackSimulation()->simulations()->post($requestBody);


```