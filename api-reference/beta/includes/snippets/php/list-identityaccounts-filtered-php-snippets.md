---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Identities\IdentityAccounts\IdentityAccountsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IdentityAccountsRequestBuilderGetRequestConfiguration();
$queryParameters = IdentityAccountsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "onPremisesSecurityIdentifier eq 'S-1-5-21-989687458-3461180213-172365591-281652'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->identities()->identityAccounts()->get($requestConfiguration)->wait();

```