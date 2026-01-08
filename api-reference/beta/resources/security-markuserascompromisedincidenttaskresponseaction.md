---
title: "markUserAsCompromisedIncidentTaskResponseAction resource type"
description: "Represents an action to mark a user account as compromised in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# markUserAsCompromisedIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to mark a user account as compromised in Microsoft Defender XDR. This action sets the user's risk level to "high" in Microsoft Entra ID Protection, which can trigger conditional access policies and additional security measures.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier (such as userPrincipalName or object ID) of the user account to mark as compromised. Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.markUserAsCompromisedIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.markUserAsCompromisedIncidentTaskResponseAction",
  "identifierValue": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
