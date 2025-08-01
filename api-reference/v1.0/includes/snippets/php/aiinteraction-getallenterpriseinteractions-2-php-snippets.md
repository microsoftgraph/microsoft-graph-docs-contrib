---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Copilot\Users\Item\InteractionHistory\GetAllEnterpriseInteractions\GetAllEnterpriseInteractionsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllEnterpriseInteractionsRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllEnterpriseInteractionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "appClass eq 'IPM.SkypeTeams.Message.Copilot.BizChat'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->copilot()->users()->byAiUserId('aiUser-id')->interactionHistory()->getAllEnterpriseInteractions()->get($requestConfiguration)->wait();

```