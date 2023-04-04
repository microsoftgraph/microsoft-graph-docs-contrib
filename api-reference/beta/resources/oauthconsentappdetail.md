---
title: "oAuthConsentAppDetail resource type"
description: "Details required for oAuth technique"
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# oAuthConsentAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details required for oAuth technique
## Properties
|Property|Type|Description|
|:---|:---|:---|
|appScope|oAuthAppScope|App scope..The possible values are: `unknown`, `readCalendar`, `readContact`, `readMail`, `readAllChat`, `readAllFile`, `readAndWriteMail`, `sendMail`, `unknownFutureValue`.|
|displayLogo|String|App display logo.|
|displayName|String|App name.|

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

