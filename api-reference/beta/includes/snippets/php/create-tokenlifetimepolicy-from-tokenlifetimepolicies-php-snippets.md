---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TokenLifetimePolicy();
$requestBody->setDefinition(['{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}', ]);

$requestBody->setDisplayName('Contoso token lifetime policy');

$requestBody->setIsOrganizationDefault(true);



$result = $graphServiceClient->policies()->tokenLifetimePolicies()->post($requestBody);


```