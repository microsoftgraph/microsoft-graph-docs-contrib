---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->certificateAuthorities()->mutualTlsOauthConfigurations()->byMutualTlsOauthConfigurationId('mutualTlsOauthConfiguration-id')->delete()->wait();

```