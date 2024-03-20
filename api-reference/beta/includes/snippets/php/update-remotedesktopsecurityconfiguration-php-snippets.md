---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteDesktopSecurityConfiguration();
$requestBody->setOdataType('#microsoft.graph.remoteDesktopSecurityConfiguration');
$requestBody->setIsRemoteDesktopProtocolEnabled(true);

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->patch($requestBody)->wait();

```