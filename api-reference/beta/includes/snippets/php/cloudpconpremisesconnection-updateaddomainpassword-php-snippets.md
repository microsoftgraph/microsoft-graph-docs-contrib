---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAdDomainPasswordPostRequestBody();
$requestBody->setAdDomainPassword('AdDomainPassword value');

$graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnections()->byCloudPcOnPremisesConnectionId('cloudPcOnPremisesConnection-id')->updateAdDomainPassword()->post($requestBody)->wait();

```