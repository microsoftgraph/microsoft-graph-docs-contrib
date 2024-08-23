---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Contact;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Contact();
$requestBody->setParentFolderId('parentFolderId-value');
$requestBody->setBirthday(new \DateTime('2016-10-19T10:37:00Z'));
$requestBody->setFileAs('fileAs-value');
$requestBody->setDisplayName('displayName-value');
$requestBody->setGivenName('givenName-value');
$requestBody->setInitials('initials-value');

$result = $graphServiceClient->me()->contactFolders()->byContactFolderId('contactFolder-id')->contacts()->post($requestBody)->wait();

```