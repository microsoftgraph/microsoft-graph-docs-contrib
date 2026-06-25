---
title: "detonationObservables resource type"
description: Represents detonation details.
author: malvika-balaraj
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# detonationObservables resource type

Namespace: microsoft.graph.security


Represents the resources that a detonation includes, such as URLs, IPs, domains, and files. These resources can be either problematic or benign. It is returned in the **detonationObservables** property of [detonationDetails](../resources/security-detonationdetails.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contactedIps|String collection|The list of all contacted IPs in the detonation.|
|contactedUrls|String collection|The list of all URLs found in the detonation.|
|droppedfiles|String collection|The list of all dropped files in the detonation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationObservables"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationObservables",
  "droppedfiles": [
    "String"
  ],
  "contactedIps": [
    "String"
  ],
  "contactedUrls": [
    "String"
  ]
}
```

