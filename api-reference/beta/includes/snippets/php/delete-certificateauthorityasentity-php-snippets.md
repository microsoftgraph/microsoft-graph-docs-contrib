---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->trustedCertificateAuthorities()->byCertificateAuthorityAsEntityId('certificateAuthorityAsEntity-id')->delete()->wait();

```