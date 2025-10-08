---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\NetworkAccess\Connectivity\Microsoft\Graph\Networkaccess\GetWebCategoryByUrl(url='{url}')\GetWebCategoryByUrlWithUrlRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MicrosoftGetWebCategoryByUrlWithUrlRequestBuilderGetRequestConfiguration();
$queryParameters = MicrosoftGetWebCategoryByUrlWithUrlRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->@url = "msn.com/en-us/sports";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->connectivity()->microsoftGraphNetworkaccessGetWebCategoryByUrlWithUrl('{url}', )->get($requestConfiguration)->wait();

```