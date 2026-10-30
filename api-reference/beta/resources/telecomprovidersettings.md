---
title: "telecomProviderSettings resource type"
description: "Represents configuration for routing SMS and voice authentication traffic through a telecom provider integration."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/21/2026
---

# telecomProviderSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration for routing SMS and voice authentication traffic through a telecom provider integration. This complex type is used by the **telecomProviderSettings** property of the [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) and [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) resources.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appId|Guid|The application (client) ID used to authenticate to the telecom provider.|
|isEvaluationModeEnabled|Boolean|`true` to run the telecom provider integration in evaluation (nonenforcing) mode; otherwise, `false`.|
|migrationPercentage|Int32|The percentage of authentication traffic routed to the telecom provider. Valid values range from 0 through 100.|
|url|String|The endpoint URL of the telecom provider integration.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.telecomProviderSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.telecomProviderSettings",
  "url": "String",
  "appId": "Guid",
  "isEvaluationModeEnabled": "Boolean",
  "migrationPercentage": "Integer"
}
```
