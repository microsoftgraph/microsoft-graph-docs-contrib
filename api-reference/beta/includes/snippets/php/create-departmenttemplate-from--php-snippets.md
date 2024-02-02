---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DepartmentTemplate();
$requestBody->setOdataType('#microsoft.graph.security.departmentTemplate');
$requestBody->setDisplayName('String');
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');
$requestBody->setCreatedBy($createdBy);

$result = $graphServiceClient->security()->labels()->departments()->post($requestBody)->wait();

```