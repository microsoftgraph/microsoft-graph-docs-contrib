---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConditionalAccessSettings();
$requestBody->setSignalingStatus(new Status('disabled'));

$additionalData = [
		'@odata.context' => 'https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->networkAccess()->settings()->conditionalAccess()->patch($requestBody);


```