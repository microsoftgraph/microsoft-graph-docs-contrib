---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('IT Helpdesk to support Contoso employees');
$requestBody->setDisplayName('IT Helpdesk (User)');
$requestBody->setMailEnabled(false);
$requestBody->setMailNickname('userHelpdesk');
$requestBody->setSecurityEnabled(true);
$requestBody->setIsAssignableToRole(true);
$additionalData = [
	'owners@odata.bind' => [
'https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6', ],
	'members@odata.bind' => [
'https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6', 'https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725', ],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->post($requestBody)->wait();

```