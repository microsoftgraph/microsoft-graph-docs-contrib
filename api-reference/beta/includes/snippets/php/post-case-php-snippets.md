---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Case;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EscapedCase();
$requestBody->setDisplayName('My Case 1');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->post($requestBody)->wait();

```