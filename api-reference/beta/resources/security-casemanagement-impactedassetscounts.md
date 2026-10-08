---
title: "impactedAssetsCounts resource type"
description: "Contains impacted asset count summaries for an incident case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# impactedAssetsCounts resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains impacted asset count summaries for an [incidentCase](../resources/security-casemanagement-incidentcase.md). Returned in the **impactedAssets** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiAgents|Int32|The number of impacted AI agents.|
|apps|Int32|The number of impacted apps.|
|cloudResources|Int32|The number of impacted cloud resources.|
|files|Int32|The number of impacted files.|
|ips|Int32|The number of impacted IP addresses.|
|machines|Int32|The number of impacted machines.|
|mailboxes|Int32|The number of impacted mailboxes.|
|oauthApps|Int32|The number of impacted OAuth apps.|
|processes|Int32|The number of impacted processes.|
|registryKeys|Int32|The number of impacted registry keys.|
|securityGroups|Int32|The number of impacted security groups.|
|total|Int32|The total number of impacted assets.|
|urls|Int32|The number of impacted URLs.|
|users|Int32|The number of impacted users.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.impactedAssetsCounts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.impactedAssetsCounts",
  "machines": "Integer",
  "users": "Integer",
  "mailboxes": "Integer",
  "apps": "Integer",
  "cloudResources": "Integer",
  "aiAgents": "Integer",
  "ips": "Integer",
  "urls": "Integer",
  "files": "Integer",
  "processes": "Integer",
  "registryKeys": "Integer",
  "securityGroups": "Integer",
  "oauthApps": "Integer",
  "total": "Integer"
}
```
