---
title: "applicationSignInDetailedSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# applicationSignInDetailedSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List applicationSignInDetailedSummaries](../api/applicationsignindetailedsummary-list.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) collection|Get a list of the [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) objects and their properties.|
|[Create applicationSignInDetailedSummary](../api/applicationsignindetailedsummary-create.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md)|Create a new [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object.|
|[Get applicationSignInDetailedSummary](../api/applicationsignindetailedsummary-get.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md)|Read the properties and relationships of an [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object.|
|[Update applicationSignInDetailedSummary](../api/applicationsignindetailedsummary-update.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md)|Update the properties of an [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object.|
|[Delete applicationSignInDetailedSummary](../api/applicationsignindetailedsummary-delete.md)|None|Deletes an [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aggregatedEventDateTime|DateTimeOffset|**TODO: Add Description**|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|signInCount|Int64|**TODO: Add Description**|
|status|[signInStatus](../resources/signinstatus.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.applicationSignInDetailedSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationSignInDetailedSummary",
  "id": "String (identifier)",
  "appId": "String",
  "appDisplayName": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "signInCount": "Integer",
  "aggregatedEventDateTime": "String (timestamp)"
}
```

