---
title: "tenantGovernanceSetting resource type"
description: "Represents the tenant governance settings that control related tenant discovery and invitation capabilities."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# tenantGovernanceSetting resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant governance settings that control related tenant discovery and invitation capabilities. This is a singleton resource.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/tenantgovernanceservices-tenantgovernancesetting-get.md)|[microsoft.graph.tenantGovernanceServices.tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md)|Read the properties of the [tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md) singleton.|
|[Update](../api/tenantgovernanceservices-tenantgovernancesetting-update.md)|[microsoft.graph.tenantGovernanceServices.tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md)|Update the **canReceiveInvitations** property of the tenant governance settings.|
|[enableRelatedTenants](../api/tenantgovernanceservices-tenantgovernancesetting-enablerelatedtenants.md)|None|Enable the related tenants feature for tenant discovery.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|canReceiveInvitations|Boolean|Indicates whether the tenant can receive governance invitations. When set to `false`, the tenant cannot receive new governance invitations. When set to `true`, other tenants can send your tenant invitations by providing your tenant id or domain name. Default value is `false`.|
|isRelatedTenantsEnabled|Boolean|Indicates whether the related tenants feature is enabled for tenant discovery. When set to `false`, related tenant APIs don't work. This property can be enabled by calling the [enableRelatedTenants](../api/tenantgovernanceservices-tenantgovernancesetting-enablerelatedtenants.md) action. Default value is `false`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.tenantGovernanceSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.tenantGovernanceSetting",
  "isRelatedTenantsEnabled": "Boolean",
  "canReceiveInvitations": "Boolean"
}
```

