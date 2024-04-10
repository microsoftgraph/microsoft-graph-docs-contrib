---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UploadClientCertificatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadClientCertificatePostRequestBody();
$requestBody->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');
$requestBody->setPassword('<password>');

$result = $graphServiceClient->identity()->apiConnectors()->byIdentityApiConnectorId('identityApiConnector-id')->uploadClientCertificate()->post($requestBody)->wait();

```