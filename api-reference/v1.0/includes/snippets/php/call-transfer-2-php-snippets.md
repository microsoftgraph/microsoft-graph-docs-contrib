---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TransferPostRequestBody();
$transferTarget = new InvitationParticipantInfo();
$transferTarget->setOdataType('#microsoft.graph.invitationParticipantInfo');

$transferTargetIdentity = new IdentitySet();
$transferTargetIdentity->setOdataType('#microsoft.graph.identitySet');

$transferTargetIdentityUser = new Identity();
$transferTargetIdentityUser->setOdataType('#microsoft.graph.identity');

$transferTargetIdentityUser->setId('550fae72-d251-43ec-868c-373732c2704f');

$transferTargetIdentityUser->setDisplayName('Heidi Steen');


$transferTargetIdentity->setUser($transferTargetIdentityUser);

$transferTarget->setIdentity($transferTargetIdentity);
$transferTarget->setReplacesCallId('e5d39592-99bd-4db8-bca8-30fb894ec51d');

$additionalData = [
		'endpointType' => 'default', 
];
$transferTarget->setAdditionalData($additionalData);



$requestBody->setTransferTarget($transferTarget);


$graphServiceClient->communications()->calls()->byCallId('call-id')->transfer()->post($requestBody);


```