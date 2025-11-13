---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\SecurityCopilot\Session;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Session();
$requestBody->setOdataType('#microsoft.graph.security.securityCopilot.session');
$requestBody->setDisplayName('Who am I');

$result = $graphServiceClient->security()->securityCopilot()->workspaces()->byWorkspaceId('workspace-id')->sessions()->post($requestBody)->wait();

```