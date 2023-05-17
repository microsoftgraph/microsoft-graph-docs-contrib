---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetMailTipsPostRequestBody();
$requestBody->setEmailAddresses(['danas@contoso.onmicrosoft.com', 'fannyd@contoso.onmicrosoft.com', ]);

$requestBody->setMailTipsOptions(new MailTipsType('automaticreplies, mailboxfullstatus'));



$result = $graphServiceClient->me()->getMailTips()->post($requestBody);


```