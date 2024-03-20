---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration();
$queryParameters = CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "name eq 'Project' and status eq 'Available'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->get($requestConfiguration)->wait();

```