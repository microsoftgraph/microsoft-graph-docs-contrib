---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Application;
use Microsoft\Graph\Generated\Models\InformationalUrl;
use Microsoft\Graph\Generated\Models\WebApplication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setTags(['HR', 'Payroll', 'HideApp', 	]);
$info = new InformationalUrl();
$info->setLogoUrl('https://cdn.contoso.com/photo/2016/03/21/23/25/link-1271843_1280.png');
$info->setMarketingUrl('https://www.contoso.com/app/marketing');
$info->setPrivacyStatementUrl('https://www.contoso.com/app/privacy');
$info->setSupportUrl('https://www.contoso.com/app/support');
$info->setTermsOfServiceUrl('https://www.contoso.com/app/termsofservice');
$requestBody->setInfo($info);
$web = new WebApplication();
$web->setHomePageUrl('https://www.contoso.com/');
$web->setLogoutUrl('https://www.contoso.com/frontchannel_logout');
$web->setRedirectUris(['https://localhost', 	]);
$requestBody->setWeb($web);
$requestBody->setServiceManagementReference('Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;');

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```