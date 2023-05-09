---
title: "adminDynamics resource type"
description: "**Company wide configuration for Dynamics 365**"
author: "**zadinsmo**"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminDynamics resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Company wide configuration for Dynamics 365**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminDynamics](../api/tenantadmin-admindynamics-get.md)|[microsoft.graph.tenantAdmin.adminDynamics](../resources/tenantadmin-admindynamics.md)|Read the properties and relationships of a [microsoft.graph.tenantAdmin.adminDynamics](../resources/tenantadmin-admindynamics.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customerVoice|[microsoft.graph.tenantAdmin.customerVoiceSettings](../resources/tenantadmin-customervoicesettings.md)|**Company wide settings for Dynamics customer voice**|
|id|String|**Unique Id** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAdmin.adminDynamics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminDynamics",
  "id": "String (identifier)",
  "customerVoice": {
    "@odata.type": "microsoft.graph.tenantAdmin.customerVoiceSettings"
  }
}
```

