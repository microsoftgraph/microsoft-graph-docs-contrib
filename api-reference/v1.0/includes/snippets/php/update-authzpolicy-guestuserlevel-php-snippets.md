---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthorizationPolicy();
$requestBody->setAllowEmailVerifiedUsersToJoinOrganization(false);



$requestResult = $graphServiceClient->policies()->authorizationPolicy()->patch($requestBody);


```