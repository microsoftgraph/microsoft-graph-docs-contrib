---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->escapedPrint()->taskDefinitions()->byPrintTaskDefinitionId('printTaskDefinition-id')->tasks()->byPrintTaskId('printTask-id')->get()->wait();

```