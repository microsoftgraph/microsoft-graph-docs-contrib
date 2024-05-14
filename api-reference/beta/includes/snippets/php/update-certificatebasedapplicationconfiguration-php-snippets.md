---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CertificateBasedApplicationConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedApplicationConfiguration();
$requestBody->setOdataType('#microsoft.graph.certificateBasedApplicationConfiguration');
$requestBody->setDisplayName('New display name');
$requestBody->setDescription('New description text');

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->patch($requestBody)->wait();

```