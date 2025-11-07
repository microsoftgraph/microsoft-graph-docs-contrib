---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\SecurityCopilot\Workspaces\Item\Plugins\PluginsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PluginsRequestBuilderGetRequestConfiguration();
$queryParameters = PluginsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "name eq 'Entra'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->securityCopilot()->workspaces()->byWorkspaceId('workspace-id')->plugins()->get($requestConfiguration)->wait();

```