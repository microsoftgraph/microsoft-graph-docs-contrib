---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PronounsSettings();
$requestBody->setIsEnabledInOrganization(true);

$result = $graphServiceClient->admin()->people()->pronouns()->patch($requestBody)->wait();

```