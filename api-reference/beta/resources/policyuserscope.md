---
title: "policyUserScope resource type"
description: "Defines the scope of a data governance policy as it applies to a specific user."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyUserScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the scope of a data governance policy as it applies to a specific user.

Returned from [compute protection scopes](../api/userprotectionscopecontainer-compute.md).

Inherits from [policyScopeBase](../resources/policyscopebase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|microsoft.graph.security.userActivityTypes| Flags specifying the user activities the calling application supports or is interested. Possible values are `none`, `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `unknownFutureValue`. Required.  This object is a multi-valued enumeration.|
|executionMode|microsoft.graph.security.executionMode|Policy execution mode for this user.  Possible values are `evaluateInline` and `evaluateOffline`. Inherited from `policyScopeBase`. Required.|
|locations|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|Locations protected for this user. Inherited from `policyScopeBase`. Required.|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|Enforcement actions applicable to this user. Inherited from `policyScopeBase`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.policyScopeBase",
  "@odata.type": "microsoft.graph.policyUserScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyUserScope",
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
  ]
}
```
