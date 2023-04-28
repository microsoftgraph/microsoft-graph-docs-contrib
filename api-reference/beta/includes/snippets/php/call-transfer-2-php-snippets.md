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

$transferTargetIdentityUser = new Identity();
$transferTargetIdentityUser->set@odatatype('#microsoft.graph.identity');

$transferTargetIdentityUser->setId('550fae72-d251-43ec-868c-373732c2704f');

$transferTargetIdentityUser->setDisplayName('Heidi Steen');

$additionalData = [
		'tenantId' => '72f988bf-86f1-41af-91ab-2d7cd011db47', 
];
$transferTargetIdentityUser->setAdditionalData($additionalData);



$transferTargetIdentity->setUser($transferTargetIdentityUser);

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