---
title: "adminAppsAndServices resource type"
description: "**Company wide configuration for apps and services**"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminAppsAndServices resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Company wide configuration for apps and services**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminAppsAndServices](../api/tenantadmin-adminappsandservices-get.md)|[microsoft.graph.tenantAdmin.adminAppsAndServices](../resources/tenantadmin-adminappsandservices.md)|Read the properties and relationships of a [microsoft.graph.tenantAdmin.adminAppsAndServices](../resources/tenantadmin-adminappsandservices.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**Unique id** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|settings|[microsoft.graph.tenantAdmin.appsAndServicesSettings](../resources/tenantadmin-appsandservicessettings.md)|**Company wide settings for apps and services**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAdmin.adminAppsAndServices",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminAppsAndServices",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.tenantAdmin.appsAndServicesSettings"
  }
}
```

