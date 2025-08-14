---
title: "userDataSecurityAndGovernance resource type"
description: "Provides access to data security and governance functionalities specifically scoped to the context of a single user."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# userDataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides access to data security and governance functionalities specifically scoped to the context of a single user.

Inherits from [dataSecurityAndGovernance](../resources/datasecurityandgovernance.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Compute protection scopes](../api/userprotectionscopecontainer-compute.md) | [policyUserScope](../resources/policyuserscope.md) collection | Compute the protection scopes for this user. |
| [Process content](../api/userdatasecurityandgovernance-processcontent.md) | [processContentResponse](../resources/processcontentresponse.md) | Process content against data security and governance policies in the context of this user. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique ID of the data security and governance stream. Inherited from [dataSecurityAndGovernance](../resources/datasecurityandgovernance.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.activitiesContainer](../resources/activitiescontainer.md)|Container for activity logs (content processing and audit) related to this user. ContainsTarget: true.|

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
