---
title: "policyTenantScope resource type"
description: "Defines the scope of a data governance policy at the tenant level, including user binding information."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyTenantScope resource type

Namespace: microsoft.graph

Defines the scope of a data governance policy at the tenant level, including user binding information.

Returned from [compute protection scope](../api/tenantprotectionscopecontainer-compute.md)

Inherits from [policyScopeBase](../resources/policyscopebase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|microsoft.graph.security.userActivityTypes| Flags specifying the user activities the calling application supports or is interested. Possible values are `none`, `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `unknownFutureValue`. Required. This object is a multi-valued enumeration.|
|executionMode|microsoft.graph.security.executionMode|Policy execution mode at the tenant level.  Possible values are `evaluateInline` and `evaluateOffline`. Inherited from `policyScopeBase`. Required.|
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
