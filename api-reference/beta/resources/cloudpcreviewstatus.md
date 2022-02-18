---
title: "cloudPcReviewStatus resource type"
description: "The details of the Cloud PC review status."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcReviewStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The details of the Cloud PC review status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inReview|Boolean| True if the Cloud PC is set to in review by admin.|
|userAccessLevel|cloudPcUserAccessLevel|The access level of the Cloud PC's end user, possible values include: `unrestricted`, `restricted`.|
|azureStorageAccountId|String|The resource ID of the Azure Storage account in which the Cloud PC snapshot is being saved.|
|restorePointDateTime|DateTimeOffset|The specific time of the Cloud PC's snapshot that was taken and saved automatically when it is set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as ‘2014-01-01T00:00:00Z’.|


### cloudPcUserAccessLevel values

|Member|Description|
|:---|:---|
|unrestricted|No restriction. User can access their Cloud PC.|
|restricted|User is not allowed to access their Cloud PC.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

##### CSDL

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcReviewStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReviewStatus",
  "inReview": "Boolean",
  "userAccessLevel": "String",
  "restorePointDateTime": "String (timestamp)",
  "azureStorageAccountId": "String"
}
```

