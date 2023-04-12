---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UploadClientCertificatePostRequestBody();
$requestBody->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');

$requestBody->setPassword('<password>');



$result = $graphServiceClient->identity()->apiConnectorsById('identityApiConnector-id')->uploadClientCertificate()->post($requestBody);


```