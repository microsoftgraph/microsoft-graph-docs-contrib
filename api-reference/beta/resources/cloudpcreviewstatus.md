---
title: "cloudPcReviewStatus resource type"
description: "Represents details about the review status of a Cloud PC."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcReviewStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about the review status of a Cloud PC.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureStorageAccountId|String|The resource ID of the Azure Storage account in which the Cloud PC snapshot is being saved.|
|azureStorageAccountName|String|The name of the Azure Storage account in which the Cloud PC snapshot is being saved.|
|azureStorageContainerName|String|The name of the container in an Azure Storage account in which the Cloud PC snapshot is being saved.|
|inReview|Boolean| `True` if the Cloud PC is set to in review by the administrator.|
|restorePointDateTime|DateTimeOffset|The specific date and time of the Cloud PC snapshot that was taken and saved automatically, when the Cloud PC is set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`.|
|reviewStartDateTime|DateTimeOffset|The specific date and time when the Cloud PC was set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`.|
|subscriptionId|String|The ID of the Azure subscription in which the Cloud PC snapshot is being saved, in GUID format.|
|subscriptionName|String|The name of the Azure subscription in which the Cloud PC snapshot is being saved.|
|userAccessLevel|[cloudPcUserAccessLevel](#cloudpcuseraccesslevel-values)|The access level of the end user on the Cloud PC. Possible values are: `unrestricted`, `restricted`.|

### cloudPcUserAccessLevel values

|Member|Value|Description|
|:---|:---|:---|
|unrestricted|0|No restriction. Users can access the Cloud PC.|
|restricted|1|Users are not allowed to access the Cloud PC.|
|unknownFutureValue|999|Evolvable enumeration sentinel value. Do not use.|


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
  "azureStorageAccountId": "String",
  "azureStorageAccountName": "String",
  "azureStorageContainerName": "String",
  "inReview": "Boolean",
  "restorePointDateTime": "String (timestamp)",
  "reviewStartDateTime": "String (timestamp)",
  "subscriptionId": "String",
  "subscriptionName": "String",
  "userAccessLevel": "String"
}
```

