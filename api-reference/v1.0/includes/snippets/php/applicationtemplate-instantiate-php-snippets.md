---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InstantiatePostRequestBody();
$requestBody->setDisplayName('Azure AD SAML Toolkit');

$result = $graphServiceClient->applicationTemplates()->byApplicationTemplateId('applicationTemplate-id')->instantiate()->post($requestBody)->wait();

```