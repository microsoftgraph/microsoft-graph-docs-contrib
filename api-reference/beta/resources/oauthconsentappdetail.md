---
title: "oAuthConsentAppDetail resource type"
description: "Represents details required for the oAuth technique."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# oAuthConsentAppDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details required for the oAuth technique. Admins can configure the scope, name, and logo for a phish app that is associated to a simulation.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appScope|oAuthAppScope|App scope. The possible values are: `unknown`, `readCalendar`, `readContact`, `readMail`, `readAllChat`, `readAllFile`, `readAndWriteMail`, `sendMail`, `unknownFutureValue`.|
|displayLogo|String|App display logo.|
|displayName|String|App name.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
