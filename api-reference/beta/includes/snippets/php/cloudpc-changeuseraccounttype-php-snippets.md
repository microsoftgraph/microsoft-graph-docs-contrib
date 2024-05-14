---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChangeUserAccountTypePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangeUserAccountTypePostRequestBody();
$requestBody->setUserAccountType(new CloudPcUserAccountType('administrator'));

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->changeUserAccountType()->post($requestBody)->wait();

```