---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TransferPostRequestBody();
$transferTarget = new InvitationParticipantInfo();
$transferTarget->set@odatatype('#microsoft.graph.invitationParticipantInfo');

$transferTarget->setEndpointType(new EndpointType('default'));

$transferTargetIdentity = new IdentitySet();
$transferTargetIdentity->set@odatatype('#microsoft.graph.identitySet');

$additionalData = [
		'phone' => $transferTargetIdentity = new Phone();
$		transferTargetIdentity->set@odatatype('#microsoft.graph.identity');

$		transferTargetIdentity->setId('+12345678901');


$transferTargetIdentity->setPhone($phone);

];
$transferTargetIdentity->setAdditionalData($additionalData);



$transferTarget->setIdentity($transferTargetIdentity);
$transferTarget->setReplacesCallId('e5d39592-99bd-4db8-bca8-30fb894ec51d');

$additionalData = [
		'languageId' => 'en-us', 
		'region' => 'amer', 
];
$transferTarget->setAdditionalData($additionalData);



$requestBody->setTransferTarget($transferTarget);


$graphServiceClient->communications()->callsById('call-id')->transfer()->post($requestBody);


```