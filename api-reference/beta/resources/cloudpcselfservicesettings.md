---
title: "cloudPcSelfServiceSettings resource type"
description: "The self-service upgrade setting."
author: "jiajyang"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# cloudPcSelfServiceSettings resource type

Namespace: microsoft.graph

Describes the self-service upgrade setting. Each tenant has one self-service upgrade setting, where the ID property is your Azure AD tenant ID. This setting allows an admin to enable a user to self-upgrade their Cloud PC.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get selfServiceSettings](../api/virtualendpoint-get-cloudpcselfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Update selfServiceSettings](../api/virtualendpoint-update-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the self-service setting, which is the same as your Azure AD tenant ID. Read-only.|
|enabled|Boolean|When true, self-service is enabled at the tenant level. When false, self-service is disabled at the tenant level.|
|assignments|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md) collection|The IDs of the Azure AD user groups that are allowed to perform self-service when tenant-level self service is enabled. Only security groups and Office 365 Groups are supported.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSelfServiceSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSelfServiceSettings",
  "id": "String (identifier)",
  "enabled": "Boolean",
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
      "groupId": "String"
    }
  ]
}
```
