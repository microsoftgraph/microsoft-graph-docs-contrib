---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskGroup();
$requestBody->setName('Leisure tasks');

$result = $graphServiceClient->me()->outlook()->taskGroups()->post($requestBody)->wait();

```