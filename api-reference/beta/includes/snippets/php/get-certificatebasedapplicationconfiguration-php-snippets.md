---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->get()->wait();

```