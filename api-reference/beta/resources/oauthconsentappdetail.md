---
title: "oAuthConsentAppDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# oAuthConsentAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScope|oAuthAppScope|**TODO: Add Description**.The possible values are: `unknown`, `readCalendar`, `readContact`, `readMail`, `readAllChat`, `readAllFile`, `readAndWriteMail`, `sendMail`, `unknownFutureValue`.|
|displayLogo|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuthConsentAppDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuthConsentAppDetail",
  "displayName": "String",
  "displayLogo": "String",
  "appScope": "String"
}
```

