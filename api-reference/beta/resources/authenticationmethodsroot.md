---
title: "authenticationMethodsRoot resource type"
description: "Container for navigation properties of resources for Microsoft Entra authentication methods."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# authenticationMethodsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for navigation properties of resources for Microsoft Entra authentication methods.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String| The unique identifier. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userRegistrationDetails|[userRegistrationDetails](../resources/userregistrationdetails.md)| Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multifactor authentication, self-service password reset, and passwordless authentication).|
|userEventsSummary|[userEventsSummary](../resources/usereventssummary.md) collection|Represents a specific user MFA/SSPR registration or reset event, including whether the event was successful, which authentication method was targeted, and failure reason if any.|
|userMfaSignInSummary|[userMfaSignInSummary](../resources/usermfasigninsummary.md) collection|Represents the total count of MFA vs non-MFA sign-in counts for a specified period.|
|userPasswordResetsAndChangesSummary|[userPasswordResetsAndChangesSummary](../resources/userpasswordresetsandchangessummary.md) collection|Represents the summary of password resets and changes for a specific day. This includes the number of password resets that were self-service and those triggered by an administrator.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsRoot",
  "id": "String (identifier)"
}
```
