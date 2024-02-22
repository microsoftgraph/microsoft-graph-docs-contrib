---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->appCatalogs()->teamsApps()->byTeamsAppId('teamsApp-id')->appDefinitions()->byTeamsAppDefinitionId('teamsAppDefinition-id')->outlineIcon()->hostedContent()->content()->get()->wait();

```