---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\TermStore\Store


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Store();
$requestBody->setDefaultLanguageTag('en-US');

$result = $graphServiceClient->termStore()->patch($requestBody)->wait();

```