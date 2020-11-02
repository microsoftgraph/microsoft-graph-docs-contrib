---
title: "cloudPcSelfServiceSettings resource type"
description: "The self-service upgrade setting."
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcSelfServiceSettings resource type

Namespace: microsoft.graph

Currently, there is only one Cloud PC user setting, which is the self-service setting.
When self-service is enabled,  users can upgrade their Cloud PCs without needing to go back and forth with their IT administrator. As the IT admin, you can use the CloudPcSelfServiceSettings API to enable or disable self-service for specific user groups.
Every tenant has one self-service setting entity, where the ID property is your Azure AD tenant ID. The self service setting entity is created when you onboard your tenant to Cloud PC. This entity can’t be deleted.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get selfServiceSettings](../api/virtualendpoint-get-cloudpcselfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Read the properties and relationships of a [cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md) object.|
|[Update selfServiceSettings](../api/virtualendpoint-update-selfservicesettings.md)|[cloudPcSelfServiceSettings](../resources/cloudpcselfservicesettings.md)|Update the properties of a selfServiceSettings object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the self-service setting, which is the same as your Azure AD tenant ID.|
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
