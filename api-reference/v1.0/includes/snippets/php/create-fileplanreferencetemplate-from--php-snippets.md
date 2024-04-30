---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FilePlanReferenceTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilePlanReferenceTemplate();
$requestBody->setOdataType('#microsoft.graph.security.filePlanReferenceTemplate');
$requestBody->setDisplayName('FIN 01-02-001');

$result = $graphServiceClient->security()->labels()->filePlanReferences()->post($requestBody)->wait();

```