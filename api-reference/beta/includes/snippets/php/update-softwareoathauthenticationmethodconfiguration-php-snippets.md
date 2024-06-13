---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SoftwareOathAuthenticationMethodConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SoftwareOathAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.softwareOathAuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('disabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```