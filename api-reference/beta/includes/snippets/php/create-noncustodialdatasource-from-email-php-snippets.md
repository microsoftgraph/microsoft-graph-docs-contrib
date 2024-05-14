---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\NoncustodialDataSource;
use Microsoft\Graph\Generated\Models\UserSource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(true);
$dataSource = new UserSource();
$dataSource->setOdataType('microsoft.graph.ediscovery.userSource');
$dataSource->setEmail('adelev@contoso.com');
$requestBody->setDataSource($dataSource);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->noncustodialDataSources()->post($requestBody)->wait();

```