---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Notebook();
$requestBody->setDisplayName('My Private notebook');

$result = $graphServiceClient->me()->onenote()->notebooks()->post($requestBody)->wait();

```