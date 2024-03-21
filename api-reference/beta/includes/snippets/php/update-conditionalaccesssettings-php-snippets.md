---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConditionalAccessSettings();
$requestBody->setSignalingStatus(new Status('disabled'));
$additionalData = [
	'@odata.context' => 'https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->networkAccess()->settings()->conditionalAccess()->patch($requestBody)->wait();

```