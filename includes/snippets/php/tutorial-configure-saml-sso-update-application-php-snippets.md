---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Application();
$web = new WebApplication();
$web->setRedirectUris(['https://signin.aws.amazon.com/saml', ]);


$requestBody->setWeb($web);
$requestBody->setIdentifierUris(['https://signin.aws.amazon.com/saml', ]);



$result = $graphServiceClient->applicationsById('application-id')->patch($requestBody);


```