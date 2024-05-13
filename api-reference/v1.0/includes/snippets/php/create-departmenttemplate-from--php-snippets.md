---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DepartmentTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DepartmentTemplate();
$requestBody->setOdataType('#microsoft.graph.security.departmentTemplate');
$requestBody->setDisplayName('Finance');

$result = $graphServiceClient->security()->labels()->departments()->post($requestBody)->wait();

```