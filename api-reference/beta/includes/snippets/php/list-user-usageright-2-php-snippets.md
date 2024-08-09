TODO:???

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\UsageRights\UsageRightsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new UsageRightsRequestBuilderGetRequestConfiguration();
$queryParameters = UsageRightsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->users()->byUserId('user-id')->cloudLicensing()->usageRights()->get($requestConfiguration)->wait();

```