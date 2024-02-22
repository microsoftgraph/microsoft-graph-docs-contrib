---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = TemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["name","description","id","scenarios"];
$queryParameters->filter = "scenarios has 'secureFoundation'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->conditionalAccess()->templates()->get($requestConfiguration)->wait();

```