---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ForwardPostRequestBody();
$requestBody->setComment('comment-value');

$toRecipientsRecipient1 = new Recipient();
$additionalData = [
'emailAddress' => $toRecipientsRecipient1 = new EmailAddress();
$		toRecipientsRecipient1->setName('name-value');

$		toRecipientsRecipient1->setAddress('address-value');


$toRecipientsRecipient1->setEmailAddress($emailAddress);

];
$toRecipientsRecipient1->setAdditionalData($additionalData);



$toRecipientsArray []= $toRecipientsRecipient1;
$requestBody->setToRecipients($toRecipientsArray);




$graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->postsById('post-id')->forward()->post($requestBody);


```