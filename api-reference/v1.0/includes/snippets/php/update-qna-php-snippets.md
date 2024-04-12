---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Qna;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Qna();
$requestBody->setDescription('The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.');

$result = $graphServiceClient->search()->qnas()->byQnaId('qna-id')->patch($requestBody)->wait();

```