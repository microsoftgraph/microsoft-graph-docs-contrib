---
title: "policyTenantScope complex type"
toc.title: "policyTenantScope complex type (preview)"
description: "Defines the scope of a data governance policy at the tenant level, including user binding information."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyTenantScope complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the scope of a data governance policy at the tenant level, including user binding information. It includes the protected locations, activities, execution mode, actions, and specifies which users or groups the policy applies to via the `policyScope` property.

Inherits from [microsoft.graph.policyScopeBase](../resources/policyscopebase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.userActivityTypes](../resources/useractivitytypes.md)|User activities protected at the tenant level. Inherited from `policyScopeBase`. Required.|
|executionMode|[microsoft.graph.executionMode](../resources/executionmode.md)|Policy execution mode at the tenant level. Inherited from `policyScopeBase`. Required.|
|locations|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|Locations protected at the tenant level. Inherited from `policyScopeBase`. Required.|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|Enforcement actions at the tenant level. Inherited from `policyScopeBase`. Required.|
|policyScope|[microsoft.graph.policyBinding](../resources/policybinding.md)|Specifies the users and groups included in or excluded from this tenant-level policy scope.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.policyScopeBase",
  "@odata.type": "microsoft.graph.policyTenantScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyTenantScope",
  "activities": "String",
  "executionMode": "String",
  "locations": [
    {
      "@odata.type": "microsoft.graph.policyLocation"
    }
  ],
  "policyActions": [
    {
      "@odata.type": "microsoft.graph.dlpActionInfo"
    }
  ],
  "policyScope": {
    "@odata.type": "microsoft.graph.policyBinding"
  }
}
```
