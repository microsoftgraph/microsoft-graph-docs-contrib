---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadClientCertificatePostRequestBody();
$requestBody->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');

$requestBody->setPassword('<password>');



$result = $graphServiceClient->identity()->apiConnectors()->byIdentityApiConnectorId('identityApiConnector-id')->uploadClientCertificate()->post($requestBody);


```