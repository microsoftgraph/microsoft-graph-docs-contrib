---
title: "delegatedAdminServiceManagementDetail resource type"
description: "Contains the management details of a service managed by Delegated Administration"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminServiceManagementDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the management details of a delegated admin service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminServiceManagementDetails](../api/delegatedadminservicemanagementdetail-list.md)|[delegatedAdminServiceManagementDetail](delegatedadminservicemanagementdetail.md)|Get a list of the **delegatedAdminServiceManagementDetail** objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of a managed service.|
|serviceName|String|The name of a managed service.|
|serviceManagementUrl|String|The URL of the management portal for the managed service.|

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
  "id": "5d0273c3-0f0e-4e00-90e8-e792c8860fb5",
  "serviceName": "Microsoft 365 Lighthouse",
  "serviceManagementUrl": "https://lighthouse.microsoft.com"
}
```

