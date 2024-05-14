---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CopyToSectionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyToSectionPostRequestBody();
$requestBody->setId('id-value');
$requestBody->setGroupId('groupId-value');

$result = $graphServiceClient->me()->onenote()->pages()->byOnenotePageId('onenotePage-id')->copyToSection()->post($requestBody)->wait();

```