---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Directory\CustomSecurityAttributeDefinitions\CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration();
$queryParameters = CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->get($requestConfiguration)->wait();

```