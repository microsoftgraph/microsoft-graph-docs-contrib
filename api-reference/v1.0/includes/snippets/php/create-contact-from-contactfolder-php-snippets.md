---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Contact;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$requestBody->setParentFolderId('parentFolderId-value');
$requestBody->setBirthday(new \DateTime('datetime-value'));
$requestBody->setFileAs('fileAs-value');
$requestBody->setDisplayName('displayName-value');
$requestBody->setGivenName('givenName-value');
$requestBody->setInitials('initials-value');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->contacts()->post($requestBody)->wait();

```