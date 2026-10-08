---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Identities\IdentityAccounts\Item\MicrosoftGraphSecurityInvokeAction\InvokeActionPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\Action;
use Microsoft\Graph\Beta\Generated\Models\Security\IdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InvokeActionPostRequestBody();
$requestBody->setAccountId('256db173-930a-4991-9061-0d51a9a93ba5');
$requestBody->setAction(new Action('disable'));
$requestBody->setIdentityProvider(new IdentityProvider('activeDirectory'));

$result = $graphServiceClient->security()->identities()->identityAccounts()->byIdentityAccountsId('identityAccounts-id')->microsoftGraphSecurityInvokeAction()->post($requestBody)->wait();

```