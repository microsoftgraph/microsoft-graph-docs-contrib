---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\SecurityCopilot\Prompt;
use Microsoft\Graph\Beta\Generated\Models\Security\SecurityCopilot\PromptType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Prompt();
$requestBody->setOdataType('#microsoft.graph.security.securityCopilot.prompt');
$requestBody->setType(new PromptType('prompt'));
$requestBody->setContent('who am I');

$result = $graphServiceClient->security()->securityCopilot()->workspaces()->byWorkspaceId('workspace-id')->sessions()->bySessionId('session-id')->prompts()->post($requestBody)->wait();

```