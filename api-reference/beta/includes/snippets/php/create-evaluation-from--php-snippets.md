---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\SecurityCopilot\Evaluation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Evaluation();

$result = $graphServiceClient->security()->securityCopilot()->workspaces()->byWorkspaceId('workspace-id')->sessions()->bySessionId('session-id')->prompts()->byPromptId('prompt-id')->evaluations()->post($requestBody)->wait();

```