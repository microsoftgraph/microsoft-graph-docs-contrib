---
title: "emailFileAssessmentRequest resource type"
description: "Represents a resource that creates and retrieves an email file threat assessment."
ms.localizationpriority: medium
author: "hafen-ms"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# emailFileAssessmentRequest resource type

Represents a resource that creates and retrieves an email file threat assessment. The email file can be an .eml file type.

Inherits from [threatAssessmentRequest](threatassessmentrequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/informationprotection-post-threatassessmentrequests.md) | [emailFileAssessmentRequest](emailfileassessmentrequest.md) | Create a new email file assessment request by posting an **emailFileAssessmentRequest** object. |
| [Get](../api/threatassessmentrequest-get.md) | [emailFileAssessmentRequest](emailfileassessmentrequest.md) | Read the properties and relationships of an **emailFileAssessmentRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|contentData|String|Base64 encoded .eml email file content. The file content can't fetch back because it isn't stored.|
|destinationRoutingReason|[mailDestinationRoutingReason](enums.md#maildestinationroutingreason-values)|The reason for mail routed to its destination. Possible values are: `none`, `mailFlowRule`, `safeSender`, `blockedSender`, `advancedSpamFiltering`, `domainAllowList`, `domainBlockList`, `notInAddressBook`, `firstTimeSender`, `autoPurgeToInbox`, `autoPurgeToJunk`, `autoPurgeToDeleted`, `outbound`, `notJunk`, `junk`.|
|category|[threatCategory](enums.md#threatcategory-values)|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentType|[threatAssessmentContentType](enums.md#threatassessmentcontenttype-values)|The content type of threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|expectedAssessment|[threatExpectedAssessment](enums.md#threatexpectedassessment-values)|The expected assessment from submitter. Possible values are: `block`, `unblock`.|
|id|String|The threat assessment request ID is a globally unique identifier (GUID).|
|recipientEmail|String|The mail recipient whose policies are used to assess the mail.|
|requestSource|[threatAssessmentRequestSource](enums.md#threatassessmentrequestsource-values)|The source of threat assessment request. Possible values are: `administrator`.|
|status|[threatAssessmentStatus](enums.md#threatassessmentstatus-values)|The assessment process status. Possible values are: `pending`, `completed`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|results|[threatAssessmentResult](threatassessmentresult.md) collection|A collection of threat assessment results. Read-only. By default, a `GET /threatAssessmentRequests/{id}` doesn't return this property unless you apply `$expand` on it.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.emailFileAssessmentRequest",
  "keyProperty": "id"
}-->

```json
{
  "category": "String",
  "contentData": "String",
  "contentType": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "destinationRoutingReason": "String",
  "expectedAssessment": "String",
  "id": "String (identifier)",
  "recipientEmail": "String",
  "requestSource": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "emailFileAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

