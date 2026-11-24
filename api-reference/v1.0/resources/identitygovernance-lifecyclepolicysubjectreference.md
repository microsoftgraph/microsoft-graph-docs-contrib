---
title: "lifecyclePolicySubjectReference resource type"
description: "Identify a subject represented in a lifecycle policy report."
author: "faithwins"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicySubjectReference resource type

Namespace: microsoft.graph.identityGovernance

An abstract type that identifies a subject represented in lifecycle policy reporting. Returned in the **subject** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).

This abstract type can't be instantiated directly. Its derived types are [lifecyclePolicyUserSubjectReference](../resources/identitygovernance-lifecyclepolicyusersubjectreference.md) and [lifecyclePolicyAgentIdentitySubjectReference](../resources/identitygovernance-lifecyclepolicyagentidentitysubjectreference.md). Use the `@odata.type` property to distinguish between these concrete types.

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier of the subject. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectReference"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicySubjectReference",
  "id": "String"
}
```
