---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ValidatePropertiesPostRequestBody();
$requestBody->setDisplayName('Myprefix_test_mysuffix');

$requestBody->setMailNickname('Myprefix_test_mysuffix');

$requestBody->setOnBehalfOfUserId('onBehalfOfUserId-value');



$graphServiceClient->groups()->byGroupId('group-id')->validateProperties()->post($requestBody);


```