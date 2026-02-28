---
title: "androidFotaDeploymentAssignmentTarget resource type"
description: "The AAD Group we are deploying firmware updates to"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidFotaDeploymentAssignmentTarget resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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