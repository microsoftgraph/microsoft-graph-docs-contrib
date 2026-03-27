---
title: "multiTenantApplicationsToProvision resource type"
description: "Represents a multi-tenant application to be provisioned in a governed tenant."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# multiTenantApplicationsToProvision resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a multi-tenant application that should be provisioned in the governed tenant when a governance relationship is established. This allows the governing tenant to deploy management or monitoring applications into the governed tenant. This resource is defined in the **multiTenantApplicationsToProvision** property of [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The **appId** (client ID) of the multi-tenant application.|
|displayName|String|The display name of the application.|
|objectId|String|The object ID of the service principal in the governing tenant.|
|requiredResourceAccesses|[microsoft.graph.tenantGovernanceServices.requiredResourceAccess](../resources/tenantgovernanceservices-requiredresourceaccess.md) collection|The collection of resource accesses (permissions) required by the application.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvision"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvision",
  "appId": "String",
  "objectId": "String",
  "displayName": "String",
  "requiredResourceAccesses": [
    {
      "@odata.type": "microsoft.graph.tenantGovernanceServices.requiredResourceAccess"
    }
  ]
}
```

