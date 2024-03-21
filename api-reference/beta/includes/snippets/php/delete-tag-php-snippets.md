---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TagItemRequestBuilderDeleteRequestConfiguration();
$queryParameters = TagItemRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->forcedelete = "true";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->tags()->byTagId('tag-id')->delete($requestConfiguration)->wait();

```