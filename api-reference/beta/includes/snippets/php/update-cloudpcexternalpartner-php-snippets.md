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
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartners()->byCloudPcExternalPartnerId('cloudPcExternalPartner-id')->patch($requestBody)->wait();

```