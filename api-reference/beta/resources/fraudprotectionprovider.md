---
title: "fraudProtectionProvider resource type"
description: "Represents the configuration details for a third-party fraud protection provider."
author: "more-rasika"
ms.date: 10/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# fraudProtectionProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration details for a third-party fraud protection provider that integrates with Microsoft Entra External ID to help protect against fraudulent activities during authentication events.
This is an abstract type that serves as the base resource for specific provider implementations. The following derived types are currently supported.

- [arkosefraudprotectionprovider](../resources/arkosefraudprotectionprovider.md) resource type
- [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md) resource type

For more information, see [Integrate Microsoft Entra External ID with Arkose Labs and HUMAN Security for fraud protection (preview)](/entra/external-id/customers/how-to-integrate-fraud-protection).

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskpreventioncontainer-list-fraudprotectionproviders.md)|[fraudProtectionProvider](../resources/fraudprotectionprovider.md) collection|Get a list of the fraudProtectionProviders and their properties.|
|[Create](../api/riskpreventioncontainer-post-fraudprotectionproviders.md)|[fraudProtectionProvider](../resources/fraudprotectionprovider.md)|Create a new fraudProtectionProvider object.|
|[Get](../api/fraudprotectionprovider-get.md)|[fraudProtectionProvider](../resources/fraudprotectionprovider.md)|Read the properties and relationships of [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object.|
|[Update](../api/fraudprotectionprovider-update.md)|None|Update the properties of a fraudProtectionProvider object.|
|[Delete](../api/riskpreventioncontainer-delete-fraudprotectionproviders.md)|None|Delete a fraudProtectionProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the fraud protection provider configuration.|
|id|String|The unique identifier for the fraud protection provider configuration. Inherited from [entity](../resources/entity.md).|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fraudProtectionProvider",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fraudProtectionProvider",
  "id": "String (identifier)",
  "displayName": "String"
}
```

