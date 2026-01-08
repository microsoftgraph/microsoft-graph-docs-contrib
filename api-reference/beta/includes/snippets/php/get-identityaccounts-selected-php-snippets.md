---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Identities\IdentityAccounts\Item\IdentityAccountsItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IdentityAccountsItemRequestBuilderGetRequestConfiguration();
$queryParameters = IdentityAccountsItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["accounts"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->identities()->identityAccounts()->byIdentityAccountsId('identityAccounts-id')->get($requestConfiguration)->wait();

```