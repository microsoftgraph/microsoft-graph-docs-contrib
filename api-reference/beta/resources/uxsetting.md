---
title: "uxSetting resource type"
description: "Represents settings related to access to the Microsoft Entra admin center."
author: "skashyap7"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# uxSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings related to access to the Microsoft Entra admin center. 

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/uxsetting-get.md)|[uxSetting](../resources/uxsetting.md)|Get the properties and relationships of a [uxSetting](../resources/uxsetting.md) object.|
|[Update](../api/uxsetting-update.md)|None|Update the properties of a [uxSetting](../resources/uxsetting.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|restrictNonAdminAccess|nonAdminSetting|If set to `true`, nonadministrators can't browse the Microsoft Entra admin center. Nonadministrators who are owners of groups or applications are unable to use the Azure portal to manage their owned resources. If set to `false`, nonadministrators can browse the Microsoft Entra admin center. The possible values are: `false`, `true`, `unknownFutureValue`.|
|id| string | The unique identifier for the tenant|

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
  "restrictNonAdminAccess": "String",
  "id": "String"
}
```
