---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CalendarPermission();
$emailAddress = new EmailAddress();
$emailAddress->setName('Samantha Booth');
$emailAddress->setAddress('samanthab@contoso.com');
$requestBody->setEmailAddress($emailAddress);
$requestBody->setIsInsideOrganization(true);
$requestBody->setIsRemovable(true);
$requestBody->setRole(new CalendarRoleType('read'));

$result = $graphServiceClient->users()->byUserId('user-id')->calendar()->calendarPermissions()->post($requestBody)->wait();

```