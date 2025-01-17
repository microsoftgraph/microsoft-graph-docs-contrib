---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MutualTlsOauthConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutualTlsOauthConfiguration();
$requestBody->setDisplayName('THIS_IS_A_NEW_NAME');

$result = $graphServiceClient->directory()->certificateAuthorities()->mutualTlsOauthConfigurations()->byMutualTlsOauthConfigurationId('mutualTlsOauthConfiguration-id')->patch($requestBody)->wait();

```