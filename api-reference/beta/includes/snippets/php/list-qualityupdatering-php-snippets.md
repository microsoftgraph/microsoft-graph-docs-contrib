---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\Policies\Item\Rings\RingsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RingsRequestBuilderGetRequestConfiguration();
$queryParameters = RingsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.windowsUpdates.qualityUpdateRing')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->windows()->updates()->policies()->byPolicyId('policy-id')->rings()->get($requestConfiguration)->wait();

```