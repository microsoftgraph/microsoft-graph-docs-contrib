---
description: "Automatically generated file. DO NOT MODIFY"
ms.custom: sfi-ga-nochange
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\CheckMemberObjects\CheckMemberObjectsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CheckMemberObjectsPostRequestBody();
$requestBody->setIds(['80a963dd-84af-4eb8-b2a6-781e444d4fb0', '62e90394-69f5-4237-9190-012177145e10', '86a64f51-3a64-4cc6-a8c8-6b8f000c0f52', 'ac38546e-ddf3-437a-ac5c-27a94cd7a0f1', 	]);

$result = $graphServiceClient->me()->checkMemberObjects()->post($requestBody)->wait();

```