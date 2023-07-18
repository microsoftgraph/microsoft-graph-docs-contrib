---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetMailTipsPostRequestBody();
$requestBody->setEmailAddresses(['danas@contoso.onmicrosoft.com', 'fannyd@contoso.onmicrosoft.com', 	]);

$requestBody->setMailTipsOptions(new MailTipsType('automaticReplies, mailboxFullStatus'));



$result = $graphServiceClient->me()->getMailTips()->post($requestBody);


```