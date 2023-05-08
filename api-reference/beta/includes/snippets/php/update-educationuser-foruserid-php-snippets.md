---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationUser();
$relatedContactsRelatedContact1 = new RelatedContact();
$relatedContactsRelatedContact1->setDisplayName('Father Time');

$relatedContactsRelatedContact1->setEmailAddress('father@time.com');

$relatedContactsRelatedContact1->setMobilePhone('4251231234');

$relatedContactsRelatedContact1->setRelationship(new ContactRelationship('guardian'));

$relatedContactsRelatedContact1->setAccessConsent(true);


$relatedContactsArray []= $relatedContactsRelatedContact1;
$relatedContactsRelatedContact2 = new RelatedContact();
$relatedContactsRelatedContact2->setDisplayName('Mother Nature');

$relatedContactsRelatedContact2->setEmailAddress('mother@nature.co.uk');

$relatedContactsRelatedContact2->setMobilePhone('3251231234');

$relatedContactsRelatedContact2->setRelationship(new ContactRelationship('parent'));

$relatedContactsRelatedContact2->setAccessConsent(true);


$relatedContactsArray []= $relatedContactsRelatedContact2;
$requestBody->setRelatedContacts($relatedContactsArray);




$result = $graphServiceClient->education()->usersById('educationUser-id')->patch($requestBody);


```