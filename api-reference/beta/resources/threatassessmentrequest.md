---
title: "threatAssessmentRequest resource type"
description: "An abstract resource type used to represent a threat assessment request item."
ms.localizationpriority: medium
author: "hafen-ms"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# threatAssessmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract resource type used to represent a threat assessment request item.

A threat assessment request can be one of the following types:

* Mail ([mailAssessmentRequest](mailAssessmentRequest.md) resource)
* Email file ([emailFileAssessmentRequest](emailFileAssessmentRequest.md) resource)
* File ([fileAssessmentRequest](fileAssessmentRequest.md) resource)
* URL ([urlAssessmentRequest](urlAssessmentRequest.md) resource)

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/informationprotection-list-threatassessmentrequests.md) | [threatAssessmentRequest](threatassessmentrequest.md) collection | List all threat assessment requests under tenant. |
| [Create](../api/informationprotection-post-threatassessmentrequests.md) | [threatAssessmentRequest](threatassessmentrequest.md) | Create a new threat assessment request by posting a derived resource type: [mailAssessmentRequest](../resources/mailAssessmentRequest.md), [emailFileAssessmentRequest](../resources/emailFileAssessmentRequest.md), [fileAssessmentRequest](../resources/fileAssessmentRequest.md), [urlAssessmentRequest](../resources/urlAssessmentRequest.md). |
| [Get](../api/threatassessmentrequest-get.md) | [threatAssessmentRequest](threatassessmentrequest.md) | Retrieve the properties and relationships of a specified **threatAssessmentRequest** resource. |

## Properties

| Property     | Type        | Description |
| :-------------|:------------|:------------|
|category|threatCategory|The threat category. Possible values are: `spam`, `phishing`, `malware`.|
|contentType|threatAssessmentContentType|The content type of threat assessment. Possible values are: `mail`, `url`, `file`.|
|createdBy|[identitySet](identityset.md)|The threat assessment request creator.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|expectedAssessment|threatExpectedAssessment|The expected assessment from submitter. Possible values are: `block`, `unblock`.|
|id|String|The threat assessment request ID is a globally unique identifier (GUID).|
|requestSource|threatAssessmentRequestSource|The source of the threat assessment request. Possible values are: `user`, `administrator`.|
|status|threatAssessmentStatus|The assessment process status. Possible values are: `pending`, `completed`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|results|[threatAssessmentResult](threatassessmentresult.md) collection|A collection of threat assessment results. Read-only. By default, a `GET /threatAssessmentRequests/{id}` does not return this property unless you apply `$expand` on it.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.threatAssessmentRequest",
  "keyProperty": "id"
}-->

```json
{
  "category": "String",
  "contentType": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "expectedAssessment": "String",
  "id": "String (identifier)",
  "requestSource": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "threatAssessmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


