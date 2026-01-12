---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcExternalPartner;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExternalPartner();
$requestBody->setOdataType('#microsoft.graph.cloudPcExternalPartner');
$requestBody->setPartnerId('198d7140-80bb-4843-8cc4-811377a49a92');
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartners()->post($requestBody)->wait();

```