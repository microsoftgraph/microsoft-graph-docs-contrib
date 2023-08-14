---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requiredResourceAccessRequiredResourceAccess1 = new RequiredResourceAccess();
$requiredResourceAccessRequiredResourceAccess1->setResourceAppId('00000002-0000-0000-c000-000000000000');

$resourceAccessResourceAccess1 = new ResourceAccess();
$resourceAccessResourceAccess1->setId('311a71cc-e848-46a1-bdf8-97ff7156d8e6');

$resourceAccessResourceAccess1->setType('Scope');


$resourceAccessArray []= $resourceAccessResourceAccess1;
$resourceAccessResourceAccess2 = new ResourceAccess();
$resourceAccessResourceAccess2->setId('3afa6a7d-9b1a-42eb-948e-1650a849e176');

$resourceAccessResourceAccess2->setType('Role');


$resourceAccessArray []= $resourceAccessResourceAccess2;
$requiredResourceAccessRequiredResourceAccess1->setResourceAccess($resourceAccessArray);



$requiredResourceAccessArray []= $requiredResourceAccessRequiredResourceAccess1;
$requestBody->setRequiredResourceAccess($requiredResourceAccessArray);




$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody);


```