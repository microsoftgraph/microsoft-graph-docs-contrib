---
title: "uxSetting resource type"
description: "UXSetting resource Type"
author: "skashyap7"
ms.localizationpriority: medium
ms.subservice: "entra-admin"
doc_type: resourcePageType
---

# uxSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get uxSetting](../api/uxsetting-get.md)|[uxSetting](../resources/uxsetting.md)|Read the properties and relationships of an [uxSetting](../resources/uxsetting.md) object.|
|[Update uxSetting](../api/uxsetting-update.md)|[uxSetting](../resources/uxsetting.md)|Update the properties of an [uxSetting](../resources/uxsetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|restrictNonAdminAccess|nonAdminSetting|If the nonAdminSetting is set to true, it restricts nonadministrators  from browsing the Microsoft Entra administration portal. Nonadministrators  who are owners of groups or applications are unable to use the Azure portal to manage their owned resources. If the nonAdminSetting is set to false, it lets nonadministrators browse the Microsoft Entra administration portal. The possible values are: `true`, `false`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.uxSetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.uxSetting",
  "restrictNonAdminAccess": "String"
}
```

