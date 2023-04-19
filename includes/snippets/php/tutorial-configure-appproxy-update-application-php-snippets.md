---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Application();
$requestBody->setIdentifierUris(['https://contosoiwaapp-contoso.msappproxy.net', ]);

$web = new WebApplication();
$web->setRedirectUris(['https://contosoiwaapp-contoso.msappproxy.net', ]);

$web->setHomePageUrl('https://contosoiwaapp-contoso.msappproxy.net');


$requestBody->setWeb($web);


$result = $graphServiceClient->applicationsById('application-id')->patch($requestBody);


```