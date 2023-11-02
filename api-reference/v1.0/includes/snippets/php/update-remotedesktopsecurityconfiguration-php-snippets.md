---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteDesktopSecurityConfiguration();
$requestBody->setOdataType('#microsoft.graph.remoteDesktopSecurityConfiguration');
$requestBody->setIsRemoteDesktopProtocolEnabled(true);

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->patch($requestBody)->wait();

```