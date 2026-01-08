---
title: "userDataSecurityAndGovernance resource type"
description: "Provides access to data security and governance functionalities specifically scoped to the context of a single user."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# userDataSecurityAndGovernance resource type

Namespace: microsoft.graph

Provides access to data security and governance functionalities specifically scoped to the context of a single user.

Inherits from [dataSecurityAndGovernance](../resources/datasecurityandgovernance.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Process content](../api/userdatasecurityandgovernance-processcontent.md) | [processContentResponse](../resources/processcontentresponse.md) | Process content against data security and governance policies in the context of this user. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique ID of the data security and governance stream. Inherited from [entity](../resources/datasecurityandgovernance.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.activitiesContainer](../resources/activitiescontainer.md)|Container for activity logs (content processing and audit) related to this user. ContainsTarget: true.|
| [Compute protection scopes](../api/userprotectionscopecontainer-compute.md) | [policyUserScope](../resources/policyuserscope.md) collection | Compute the protection scopes for this user. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userDataSecurityAndGovernance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userDataSecurityAndGovernance",
  "activities": { "@odata.type": "microsoft.graph.activitiesContainer" },
  "id": "String (identifier)"
}
```
