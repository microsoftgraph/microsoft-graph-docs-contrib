---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApplicationTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = ApplicationTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->applicationTemplates()->get($requestConfiguration)->wait();

```