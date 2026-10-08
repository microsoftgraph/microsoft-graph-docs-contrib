---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ApprovedClientApp;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApprovedClientApp();
$requestBody->setOdataType('#microsoft.graph.approvedClientApp');
$requestBody->setId('cd57c330-a543-4249-9486-c1c257341de6');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->approvedClientApps()->post($requestBody)->wait();

```