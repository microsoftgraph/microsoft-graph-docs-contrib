---
title: "crossTenantAccessPolicyAppServiceConnectSetting resource type"
description: "Represents the inbound app service connect settings for a cross-tenant access policy that specify which applications can connect across tenant boundaries."
author: "srinivaspadala-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/06/2026
---

# crossTenantAccessPolicyAppServiceConnectSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the inbound app service connect settings for a cross-tenant access policy that specify which applications can connect across tenant boundaries.

This resource is used by the **appServiceConnectInbound** property of the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) and [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resources.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| applications | [crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md) | Defines the target applications that are allowed for inbound app service connect across tenant boundaries. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyAppServiceConnectSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyAppServiceConnectSetting",
  "applications": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  }
}
```
