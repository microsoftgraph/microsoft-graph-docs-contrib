---
title: "delegatedAdminServiceManagementDetail resource type"
description: "Contains the management details of a service in the customer tenant that's managed by delegated administration."
author: "koravvams"
ms.localizationpriority: medium
ms.prod: partner-customer-administration
doc_type: resourcePageType
---

# delegatedAdminServiceManagementDetail resource type

Namespace: microsoft.graph

Contains the management details of a service in the customer tenant that's managed by delegated administration.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminServiceManagementDetails](../api/delegatedadmincustomer-list-servicemanagementdetails.md)|[delegatedAdminServiceManagementDetail](delegatedadminservicemanagementdetail.md) collection|Get a list of the **delegatedAdminServiceManagementDetail** objects and their properties.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of a managed service. Read-only.|
|serviceManagementUrl|String|The URL of the management portal for the managed service. Read-only.|
|serviceName|String|The name of a managed service. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "serviceManagementUrl": "String",
  "serviceName": "String"
}
```
