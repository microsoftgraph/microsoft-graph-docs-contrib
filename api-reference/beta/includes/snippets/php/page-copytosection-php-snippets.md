---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyToSectionPostRequestBody();
$requestBody->setId('id-value');
$requestBody->setGroupId('groupId-value');

$result = $graphServiceClient->me()->onenote()->pages()->byOnenotePageId('onenotePage-id')->copyToSection()->post($requestBody)->wait();

```