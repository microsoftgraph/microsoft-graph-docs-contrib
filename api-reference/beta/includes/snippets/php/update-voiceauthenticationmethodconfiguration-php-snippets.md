---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VoiceAuthenticationMethodConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VoiceAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.voiceAuthenticationMethodConfiguration');
$requestBody->setIsOfficePhoneAllowed(false);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```