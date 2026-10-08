---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ApprovedClientApp;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApprovedClientApp();
$requestBody->setOdataType('#microsoft.graph.approvedClientApp');
$requestBody->setDisplayName('Client App 1');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->approvedClientApps()->post($requestBody)->wait();

```