---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventPresenter;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventPresenterDetails;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventPresenter();
$presenterDetails = new VirtualEventPresenterDetails();
$presenterDetailsBio = new ItemBody();
$presenterDetailsBio->setContent('Lead Product Manager of Contoso Sales department');
$presenterDetailsBio->setContentType(new BodyType('text'));
$presenterDetails->setBio($presenterDetailsBio);
$presenterDetails->setCompany('Contoso');
$presenterDetails->setJobTitle('Product Manager');
$presenterDetails->setLinkedInProfileWebUrl('https://linkedin.com/in/DianeDemoss');
$presenterDetails->setPersonalSiteWebUrl('https://DianeDemoss.com');
$requestBody->setPresenterDetails($presenterDetails);

$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->presenters()->byVirtualEventPresenterId('virtualEventPresenter-id')->patch($requestBody)->wait();

```