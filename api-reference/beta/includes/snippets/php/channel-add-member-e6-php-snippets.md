---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AadUserConversationMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AadUserConversationMember();
$requestBody->setOdataType('#microsoft.graph.aadUserConversationMember');
$requestBody->setRoles([	]);
$additionalData = [
	'user@odata.bind' => 'https://graph.microsoft.com/beta/users(\'jacob@contoso.com\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->members()->post($requestBody)->wait();

```