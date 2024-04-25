---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Groups\Item\AcceptedSenders\$ref\RefRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RefRequestBuilderDeleteRequestConfiguration();
$queryParameters = RefRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->id = "https://graph.microsoft.com/beta/groups/{other-group-id}";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->groups()->byGroupId('group-id')->acceptedSenders()->ref()->delete($requestConfiguration)->wait();

```