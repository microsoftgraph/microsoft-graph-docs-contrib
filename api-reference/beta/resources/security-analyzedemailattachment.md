---
title: "analyzedEmailAttachment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# analyzedEmailAttachment resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detonationDetails|[microsoft.graph.security.detonationDetails](../resources/security-detonationdetails.md)|**TODO: Add Description**|
|fileName|String|**TODO: Add Description**|
|fileType|String|**TODO: Add Description**|
|sha256|String|**TODO: Add Description**|
|threatName|String|**TODO: Add Description**|
|threatType|microsoft.graph.security.threatType|**TODO: Add Description**.The possible values are: `unknown`, `spam`, `malware`, `phishing`, `none`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailAttachment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailAttachment",
  "fileName": "String",
  "fileType": "String",
  "threatType": "String",
  "threatName": "String",
  "sha256": "String",
  "detonationDetails": {
    "@odata.type": "microsoft.graph.security.detonationDetails"
  }
}
```

