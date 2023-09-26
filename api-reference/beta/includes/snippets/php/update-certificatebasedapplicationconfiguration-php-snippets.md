---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedApplicationConfiguration();
$requestBody->setOdataType('#microsoft.graph.certificateBasedApplicationConfiguration');
$requestBody->setDisplayName('New display name');
$requestBody->setDescription('New description text');

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->patch($requestBody)->wait();

```