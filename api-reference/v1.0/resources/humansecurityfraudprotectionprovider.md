---
title: "humanSecurityFraudProtectionProvider resource type"
description: "Represents the configuration details for fraud protection using HUMAN Security"
author: "more-rasika"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# humanSecurityFraudProtectionProvider resource type

Namespace: microsoft.graph

Used to configure fraud protection using HUMAN Security that integrates with Microsoft Entra External ID to help protect against fraudulent activities during user registration (sign-up) events.

Inherits from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [fraudProtectionProvider](../resources/fraudprotectionprovider.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|Unique identifier for an individual application. You can retrieve this from the HUMAN Security Admin Console or request it from your HUMAN Security Customer Success Manager.|
|displayName|String|The display name of this HUMAN Security fraud protection provider configuration. Inherited from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).|
|id|String|The unique identifier for this HUMAN Security fraud protection provider configuration. Inherited from [entity](../resources/entity.md).|
|serverToken|String| Unique identifier used to authenticate API calls between the Server side integration and the HUMAN platform. You can retrieve this from the HUMAN Security Admin Console or request it from your HUMAN Security Customer Success Manager.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.humanSecurityFraudProtectionProvider",
  "baseType": "microsoft.graph.fraudProtectionProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "appId": "String",
  "serverToken": "String"
}
```

