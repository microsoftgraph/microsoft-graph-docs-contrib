---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDisplayName('myGroup');

$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->post($requestBody)->wait();

```