---
title: "pluginAuth resource type"
description: "This describes the set of authorization types available for a Security Copilot plugin."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# pluginAuth resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This describes the set of authorization types available for a Security Copilot [plugin](../resources/security-securitycopilot-plugin.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authType|microsoft.graph.security.securityCopilot.pluginAuthTypes|Plugin authorization types. The possible values are: `none`, `basic`, `aPIKey`, `oAuthAuthorizationCodeFlow`, `oAuthClientCredentialsFlow`, `aad`, `serviceHttp`, `aadDelegated`, `oAuthPasswordGrantFlow`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityCopilot.pluginAuth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.pluginAuth",
  "authType": "String"
}
```

