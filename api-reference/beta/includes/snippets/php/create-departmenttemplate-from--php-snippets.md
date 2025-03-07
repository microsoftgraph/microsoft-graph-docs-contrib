---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\DepartmentTemplate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DepartmentTemplate();
$requestBody->setOdataType('#microsoft.graph.security.departmentTemplate');
$requestBody->setDisplayName('Finance');

$result = $graphServiceClient->security()->labels()->departments()->post($requestBody)->wait();

```