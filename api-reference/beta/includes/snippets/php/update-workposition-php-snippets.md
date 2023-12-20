---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkPosition();
$requestBody->setIsCurrent(true);

$result = $graphServiceClient->me()->profile()->positions()->byWorkPositionId('workPosition-id')->patch($requestBody)->wait();

```