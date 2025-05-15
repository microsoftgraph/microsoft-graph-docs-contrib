---
title: "androidFotaDeploymentAssignment resource type"
description: "Describes deployment security group to assign a deployment to. The backend will expand the security Group ID to extract device serial numbers prior sending a create deployment request to Zebra."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidFotaDeploymentAssignment resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes deployment security group to assign a deployment to. The backend will expand the security Group ID to extract device serial numbers prior sending a create deployment request to Zebra.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier assigned to each Android FOTA Assignment entity|
|displayName|String|The display name of the Azure AD security group used for the assignment.|
|target|[androidFotaDeploymentAssignmentTarget](../resources/intune-androidfotaservice-androidfotadeploymentassignmenttarget.md)|The AAD Group we are deploying firmware updates to|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidFotaDeploymentAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidFotaDeploymentAssignment",
  "id": "String (identifier)",
  "displayName": "String",
  "target": {
    "@odata.type": "microsoft.graph.androidFotaDeploymentAssignmentTarget",
    "groupId": "String"
  }
}
```
