---
title: "delegatedAdminServiceManagementDetail resource type"
description: "Contains the management details of a service in the customer tenant that's managed by delegated administration."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminServiceManagementDetail resource type

Namespace: microsoft.graph

Contains the management details of a service in the customer tenant that's managed by delegated administration.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminServiceManagementDetails](../api/delegatedadmincustomer-list-servicemanagementdetails.md)|[delegatedAdminServiceManagementDetail](delegatedadminservicemanagementdetail.md)|Get a list of the **delegatedAdminServiceManagementDetail** objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of a managed service. Read-only.|
|serviceName|String|The name of a managed service. Read-only.|
|serviceManagementUrl|String|The URL of the management portal for the managed service. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminServiceManagementDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminServiceManagementDetail",
  "id": "String (identifier)",
  "serviceName": "String",
  "serviceManagementUrl": "String"
}
```
