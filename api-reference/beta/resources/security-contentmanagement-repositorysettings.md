---
title: "repositorySettings resource type"
description: "Contains the URL and branch in the **sourceLocation** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md); the **deploymentLogsUrl** is read-only."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositorySettings resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the URL and branch in the **sourceLocation** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md); the **deploymentLogsUrl** is read-only.


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|branch|String|Branch that content is deployed from.|
|deploymentLogsUrl|String|URL where deployment logs can be viewed. Read-only.|
|displayUrl|String|Human-friendly display URL.|
|url|String|Repository URL.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositorySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositorySettings",
  "url": "String",
  "displayUrl": "String",
  "branch": "String",
  "deploymentLogsUrl": "String"
}
```
