---
title: "adminAppsAndServices resource type"
description: "Company-wide configuration for apps and services"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminAppsAndServices resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide configuration for apps and services.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminAppsAndServices](../api/adminappsandservices-get.md)|[adminAppsAndServices](../resources/adminappsandservices.md)|Read the properties and relationships of a [adminAppsAndServices](../resources/adminappsandservices.md) object.|
|[Update adminAppsAndServices](../api/adminappsandservices-update.md)|[adminAppsAndServices](../resources/adminappsandservices.md)|Update the properties and relationships of a [adminAppsAndServices](../resources/adminappsandservices.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID. Inherited from [entity](../resources/entity.md).|
|settings|[appsAndServicesSettings](../resources/appsandservicessettings.md)|Company-wide settings for apps and services.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminAppsAndServices",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminAppsAndServices",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "appsAndServicesSettings"
  }
}
```

