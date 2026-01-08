---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->securityCopilot()->workspaces()->byWorkspaceId('workspace-id')->sessions()->bySessionId('session-id')->get()->wait();

```