---
title: "androidFotaDeploymentAssignmentTarget resource type"
description: "The AAD Group we are deploying firmware updates to"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidFotaDeploymentAssignmentTarget resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The AAD Group we are deploying firmware updates to

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String|AAD Group Id.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidFotaDeploymentAssignmentTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidFotaDeploymentAssignmentTarget",
  "groupId": "String"
}
```
