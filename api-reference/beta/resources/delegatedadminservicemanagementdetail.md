---
title: "delegatedAdminServiceManagementDetail resource type"
description: "Contains the management details of a Delegated Admin service."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminServiceManagementDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the management details of a Delegated Admin service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|serviceId|String|The service ID of a managed service.|
|serviceManagementUrl|String|The service name of a managed service.|
|serviceName|String|The URL of the management portal for the managed service.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminServiceManagementDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
  "serviceId": "String",
  "serviceName": "String",
  "serviceManagementUrl": "String"
}
```

