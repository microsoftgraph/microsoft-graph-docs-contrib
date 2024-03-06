---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$valueSite1 = new Site();
$valueSite1->setId('contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740');
$valueArray []= $valueSite1;
$valueSite2 = new Site();
$valueSite2->setId('contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851');
$valueArray []= $valueSite2;
$requestBody->setValue($valueArray);


$result = $graphServiceClient->users()->byUserId('user-id')->followedSites()->add()->post($requestBody)->wait();

```