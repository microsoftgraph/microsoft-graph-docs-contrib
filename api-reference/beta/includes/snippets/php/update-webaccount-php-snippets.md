---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebAccount();
$requestBody->setWebUrl('https://github.com/innocenty.popov');

$result = $graphServiceClient->me()->profile()->webAccounts()->byWebAccountId('webAccount-id')->patch($requestBody)->wait();

```