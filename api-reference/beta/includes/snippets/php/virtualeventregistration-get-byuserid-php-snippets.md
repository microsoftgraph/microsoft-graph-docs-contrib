---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\VirtualEvents\Webinars\Item\Registrations\RegistrationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RegistrationsRequestBuilderGetRequestConfiguration();
$queryParameters = RegistrationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "userId eq 'b7ef013a-c73c-4ec7-8ccb-e56290f45f68'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->registrations()->get($requestConfiguration)->wait();

```