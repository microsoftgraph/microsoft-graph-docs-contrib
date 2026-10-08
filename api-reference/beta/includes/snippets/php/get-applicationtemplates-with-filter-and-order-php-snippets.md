---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\ApplicationTemplates\ApplicationTemplatesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApplicationTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = ApplicationTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","riskScore","categories"];
$queryParameters->filter = "categories/any(c: c eq 'contentSharing')";
$queryParameters->top = 2;
$queryParameters->orderby = ["riskScore/total desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->applicationTemplates()->get($requestConfiguration)->wait();

```