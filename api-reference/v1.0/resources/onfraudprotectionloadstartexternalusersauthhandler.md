---
title: "onFraudProtectionLoadStartExternalUsersAuthHandler resource type"
description: "A managed handler that defines what third-party fraud protection is enabled or disabled in an external identities user flow for Microsoft Entra external tenants."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onFraudProtectionLoadStartExternalUsersAuthHandler resource type

Namespace: microsoft.graph

A managed handler that defines what third-party fraud protection is enabled or disabled in an external identities user flow for Microsoft Entra External ID tenants.

Inherits from [onFraudProtectionLoadStartHandler](../resources/onfraudprotectionloadstarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|signUp|[fraudProtectionConfiguration](../resources/fraudprotectionconfiguration.md)|Specifies the fraud protection configuration for sign-up events.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
  "signUp": {
    "@odata.type": "microsoft.graph.fraudProtectionConfiguration"
  }
}
```

