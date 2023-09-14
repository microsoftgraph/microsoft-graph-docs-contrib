---
title: "oAuthConsentAppDetail resource type"
description: "Details required for oAuth technique. Admin can configure scope, name and logo for phish app which is associated to a simulation"
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# oAuthConsentAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details required for oAuth technique. Admin can customised scope, name and logo for phish app which is associated to a simulation. 

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appScope|oAuthAppScope|App scope. Possible values are: `unknown`, `readCalendar`, `readContact`, `readMail`, `readAllChat`, `readAllFile`, `readAndWriteMail`, `sendMail`, `unknownFutureValue`.|
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
  "appScope": "String",
  "displayLogo": "String",
  "displayName": "String"
}
```
