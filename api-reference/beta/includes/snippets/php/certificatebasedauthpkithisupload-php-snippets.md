---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Directory\PublicKeyInfrastructure\CertificateBasedAuthConfigurations\Item\Upload\UploadPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadPostRequestBody();
$requestBody->setUploadUrl('https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b');
$requestBody->setSha256FileHash('D7F9....61E6F');

$graphServiceClient->directory()->publicKeyInfrastructure()->certificateBasedAuthConfigurations()->byCertificateBasedAuthPkiId('certificateBasedAuthPki-id')->upload()->post($requestBody)->wait();

```