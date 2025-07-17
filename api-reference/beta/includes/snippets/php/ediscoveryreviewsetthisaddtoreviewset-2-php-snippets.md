---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Cases\EdiscoveryCases\Item\ReviewSets\Item\MicrosoftGraphSecurityAddToReviewSet\AddToReviewSetPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Security\EdiscoverySearch;
use Microsoft\Graph\Beta\Generated\Models\Security\AdditionalDataOptions;
use Microsoft\Graph\Beta\Generated\Models\Security\CloudAttachmentVersion;
use Microsoft\Graph\Beta\Generated\Models\Security\DocumentVersion;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddToReviewSetPostRequestBody();
$search = new EdiscoverySearch();
$search->setId('c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7');
$requestBody->setSearch($search);
$requestBody->setAdditionalDataOptions(new AdditionalDataOptions('linkedFiles, allVersions, advancedIndexing, listAttachments, htmlTranscripts, messageConversationExpansion, locationsWithoutHits, allItemsInFolder'));
$requestBody->setCloudAttachmentVersion(new CloudAttachmentVersion('latest'));
$requestBody->setDocumentVersion(new DocumentVersion('recent10'));

$graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->microsoftGraphSecurityAddToReviewSet()->post($requestBody)->wait();

```