---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->appCatalogs()->teamsApps()->byTeamsAppId('teamsApp-id')->appDefinitions()->byTeamsAppDefinitionId('teamsAppDefinition-id')->colorIcon()->hostedContent()->get();


```