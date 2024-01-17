---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ConditionalAccessTemplateItemRequestBuilderGetRequestConfiguration();
$queryParameters = ConditionalAccessTemplateItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["details"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->conditionalAccess()->templates()->byConditionalAccessTemplateId('conditionalAccessTemplate-id')->get($requestConfiguration)->wait();

```