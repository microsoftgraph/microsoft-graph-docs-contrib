---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Compliance\Ediscovery\Cases\Item\Tags\Item\TagItemRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TagItemRequestBuilderDeleteRequestConfiguration();
$queryParameters = TagItemRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->forcedelete = "true";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->tags()->byTagId('tag-id')->delete($requestConfiguration)->wait();

```