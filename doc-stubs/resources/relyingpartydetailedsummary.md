---
title: "relyingPartyDetailedSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# relyingPartyDetailedSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List relyingPartyDetailedSummaries](../api/relyingpartydetailedsummary-list.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) collection|Get a list of the [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) objects and their properties.|
|[Get relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-get.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md)|Read the properties and relationships of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|
|[Update relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-update.md)|[relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md)|Update the properties of a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|
|[Delete relyingPartyDetailedSummary](../api/relyingpartydetailedsummary-delete.md)|None|Deletes a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedSignInCount|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|migrationStatus|migrationStatus|**TODO: Add Description**. The possible values are: `ready`, `needsReview`, `additionalStepsRequired`, `unknownFutureValue`.|
|migrationValidationDetails|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description**|
|relyingPartyId|String|**TODO: Add Description**|
|relyingPartyName|String|**TODO: Add Description**|
|replyUrls|String collection|**TODO: Add Description**|
|serviceId|String|**TODO: Add Description**|
|signInSuccessRate|Double|**TODO: Add Description**|
|successfulSignInCount|Int64|**TODO: Add Description**|
|totalSignInCount|Int64|**TODO: Add Description**|
|uniqueUserCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
  "id": "String (identifier)",
  "relyingPartyId": "String",
  "serviceId": "String",
  "relyingPartyName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "totalSignInCount": "Integer",
  "signInSuccessRate": "Double",
  "uniqueUserCount": "Integer",
  "migrationStatus": "String",
  "migrationValidationDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "replyUrls": [
    "String"
  ]
}
```

