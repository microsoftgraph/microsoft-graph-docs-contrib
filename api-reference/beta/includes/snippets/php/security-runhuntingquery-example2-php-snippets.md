---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\MicrosoftGraphSecurityRunHuntingQuery\RunHuntingQueryPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RunHuntingQueryPostRequestBody();
$requestBody->setQuery('DeviceProcessEvents');
$requestBody->setTimespan('P90D');

$result = $graphServiceClient->security()->microsoftGraphSecurityRunHuntingQuery()->post($requestBody)->wait();

```