---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setServicePrincipalIds(['9089a539-a539-9089-39a5-899039a58990', 	]);



$graphServiceClient->identityProtection()->riskyServicePrincipals()->dismiss()->post($requestBody);


```