---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReprovisionPostRequestBody();
$requestBody->setUserAccountType(new CloudPcUserAccountType('administrator'));
$requestBody->setOsVersion(new CloudPcOperatingSystem('windows10'));

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->reprovision()->post($requestBody)->wait();

```