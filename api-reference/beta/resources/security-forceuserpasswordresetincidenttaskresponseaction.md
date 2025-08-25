---
title: "forceUserPasswordResetIncidentTaskResponseAction resource type"
description: "Represents an action to force a user to reset their password in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# forceUserPasswordResetIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to force a user to reset their password in Microsoft Defender XDR. This action is typically used when there's a suspicion that a user's credentials have been compromised, requiring them to create a new password at their next sign-in attempt.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier (such as userPrincipalName or object ID) of the user who will be required to reset their password. Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.forceUserPasswordResetIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.forceUserPasswordResetIncidentTaskResponseAction",
  "identifierValue": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
