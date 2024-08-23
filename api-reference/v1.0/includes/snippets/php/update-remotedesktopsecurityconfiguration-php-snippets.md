---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RemoteDesktopSecurityConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteDesktopSecurityConfiguration();
$requestBody->setOdataType('#microsoft.graph.remoteDesktopSecurityConfiguration');
$requestBody->setIsRemoteDesktopProtocolEnabled(true);

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->patch($requestBody)->wait();

```