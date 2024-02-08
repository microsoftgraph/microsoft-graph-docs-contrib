---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReportRoot();
$requestBody->setOdataType('#microsoft.graph.reportRoot');

$result = $graphServiceClient->reports()->patch($requestBody)->wait();

```