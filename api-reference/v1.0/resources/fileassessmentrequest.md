---
title: "fileAssessmentRequest resource type"
description: "Used to create and retrieve a file threat assessment."
ms.localizationpriority: medium
author: "hafen-ms"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# fileAssessmentRequest resource type

Used to create and retrieve a file threat assessment, derived from [threatAssessmentRequest](threatAssessmentRequest.md).

The file can be a text file or Word document or binary file received in an email attachment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/informationprotection-post-threatassessmentrequests.md) | [fileAssessmentRequest](fileAssessmentRequest.md) | Create a new file assessment request by posting a **fileAssessmentRequest** object. |
| [Get](../api/threatassessmentrequest-get.md) | [fileAssessmentRequest](fileassessmentrequest.md) | Read the properties and relationships of a **fileAssessmentRequest** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|category|[threatCategory](enums.md#threatcategory-values)|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentData|String|Base64 encoded file content. The file content can't fetch back because it isn't stored.|
|contentType|[threatAssessmentContentType](enums.md#threatassessmentcontenttype-values)|The content type of threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|expectedAssessment|[threatExpectedAssessment](enums.md#threatexpectedassessment-values)|The expected assessment from submitter. Possible values are: `block`, `unblock`.|
|fileName|String|The file name.|
|id|String|The threat assessment request ID is a globally unique identifier (GUID).|
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
  "@odata.type": "microsoft.graph.fileAssessmentRequest",
  "keyProperty": "id"
}-->

```json
{
  "contentData": "String",
  "category": "String",
  "contentType": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "expectedAssessment": "String",
  "fileName": "String",
  "id": "String (identifier)",
  "requestSource": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

