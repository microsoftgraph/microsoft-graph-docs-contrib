---
title: "policyScopeBase resource type"
description: "Abstract base type defining the scope of applicability for a data governance policy, including locations, activities, and execution mode."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyScopeBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type defining the scope of applicability for a data governance policy, including locations, activities, and execution mode.

Used as a base type for more specific policy scopes like [policyTenantScope](../resources/policytenantscope.md) and [policyUserScope](../resources/policyuserscope.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activities|microsoft.graph.security.userActivityTypes|Specifies the user activities the calling application supports or is interested in. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `none`, `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `unknownFutureValue`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `copyToClipboard`, `pasteFromClipboard`, `print`, `accessDebugTools`, `contentFiltering`. The `contentFiltering` value represents evaluating application content against data loss prevention policies. Required.|
|executionMode|microsoft.graph.security.executionMode |Specifies how the policy should be executed. Possible values are `evaluateInline`, `evaluateOffline`, `unknownFutureValue`. Required.|
|locationExclusions|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|Locations excluded from the policy scope. When specified, the effective scope is the set of locations in **locations** minus the locations in **locationExclusions**. Required.|
|locations|Collection([microsoft.graph.policyLocation](../resources/policylocation.md))|The locations (like domains or URLs) to be protected. Required.|
|policyActions|Collection([microsoft.graph.dlpActionInfo](../resources/dlpactioninfo.md))|The enforcement actions to take if the policy conditions are met within this scope. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.policyScopeBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyScopeBase",
  "activities": "String",
  "executionMode": "String",
  "locationExclusions": [
    {
      "@odata.type": "microsoft.graph.policyLocation"
    }
  ],
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
