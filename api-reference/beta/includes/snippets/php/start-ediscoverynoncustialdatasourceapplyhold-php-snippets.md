---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\NoncustodialDataSources\MicrosoftGraphSecurityApplyHold\ApplyHoldPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyHoldPostRequestBody();
$requestBody->setIds(['39333641443238353535383731453339', '46333131344239353834433430454335', 	]);

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->noncustodialDataSources()->microsoftGraphSecurityApplyHold()->post($requestBody)->wait();

```