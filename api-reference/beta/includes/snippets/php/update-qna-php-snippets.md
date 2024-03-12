---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Qna();
$requestBody->setDescription('The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.');

$result = $graphServiceClient->search()->qnas()->byQnaId('qna-id')->patch($requestBody)->wait();

```