---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailAuthenticationMethodConfiguration;
use Microsoft\Graph\Beta\Generated\Models\ExternalEmailOtpState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.emailAuthenticationMethodConfiguration');
$requestBody->setAllowExternalIdToUseEmailOtp(new ExternalEmailOtpState('disabled'));

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```