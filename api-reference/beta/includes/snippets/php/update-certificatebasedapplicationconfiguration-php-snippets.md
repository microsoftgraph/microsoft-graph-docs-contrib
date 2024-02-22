---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedApplicationConfiguration();
$requestBody->setOdataType('#microsoft.graph.certificateBasedApplicationConfiguration');
$requestBody->setDisplayName('New display name');
$requestBody->setDescription('New description text');

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->patch($requestBody)->wait();

```