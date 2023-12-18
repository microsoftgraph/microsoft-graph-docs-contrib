---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->appCatalogs()->teamsApps()->byTeamsAppId('teamsApp-id')->appDefinitions()->byTeamsAppDefinitionId('teamsAppDefinition-id')->outlineIcon()->hostedContent()->content()->get()->wait();

```