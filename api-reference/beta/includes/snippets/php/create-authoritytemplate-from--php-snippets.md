---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\AuthorityTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorityTemplate();
$requestBody->setOdataType('#microsoft.graph.security.authorityTemplate');
$requestBody->setDisplayName('Business');

$result = $graphServiceClient->security()->labels()->authorities()->post($requestBody)->wait();

```