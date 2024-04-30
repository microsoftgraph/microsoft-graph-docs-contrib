---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->teamwork()->teamTemplates()->byTeamTemplateId('teamTemplate-id')->definitions()->byTeamTemplateDefinitionId('teamTemplateDefinition-id')->get()->wait();

```