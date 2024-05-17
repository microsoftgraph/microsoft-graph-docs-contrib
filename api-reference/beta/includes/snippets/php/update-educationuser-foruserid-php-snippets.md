---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationUser;
use Microsoft\Graph\Generated\Models\RelatedContact;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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


$result = $graphServiceClient->education()->users()->byEducationUserId('educationUser-id')->patch($requestBody)->wait();

```