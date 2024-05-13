---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthorityTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorityTemplate();
$requestBody->setOdataType('#microsoft.graph.security.authorityTemplate');
$requestBody->setDisplayName('Business');

$result = $graphServiceClient->security()->labels()->authorities()->post($requestBody)->wait();

```