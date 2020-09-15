---
title: "win32LobAppMsiInformation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobAppMsiInformation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|packageType|win32LobAppMsiPackageType|**TODO: Add Description**. Possible values are: `perMachine`, `perUser`, `dualPurpose`.|
|productCode|String|**TODO: Add Description**|
|productName|String|**TODO: Add Description**|
|productVersion|String|**TODO: Add Description**|
|publisher|String|**TODO: Add Description**|
|requiresReboot|Boolean|**TODO: Add Description**|
|upgradeCode|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppMsiInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppMsiInformation",
  "productCode": "String",
  "productVersion": "String",
  "upgradeCode": "String",
  "requiresReboot": "Boolean",
  "packageType": "String",
  "productName": "String",
  "publisher": "String"
}
```

