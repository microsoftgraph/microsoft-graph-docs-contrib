---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPersonalDataPostRequestBody();
$requestBody->setStorageLocation('MyStorageAccount');

$graphServiceClient->directory()->inboundSharedUserProfiles()->byInboundSharedUserProfileUserId('inboundSharedUserProfile-userId')->exportPersonalData()->post($requestBody)->wait();

```