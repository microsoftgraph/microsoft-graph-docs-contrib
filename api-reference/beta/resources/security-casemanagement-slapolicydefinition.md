---
title: "slaPolicyDefinition resource type"
description: "Represents a service-level agreement policy for a single case type."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyDefinition resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a service-level agreement (SLA) policy that defines scope criteria and warning and breach timers for a single case type.

Each policy belongs to the **slaPolicies** relationship of a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md). The `caseTypeConfigurations/{caseTypeConfiguration-id}` URL segment determines its owning case type: `incidentCase`, `genericCase`, or `exposureCase`. A policy can't target multiple case types. A tenant can have up to 30 policies across its case types.

Timers are evaluated in **order**, lowest first. The first timer whose **filters** match applies; otherwise, the timer with **isDefault** set to `true` applies. A policy supports up to 15 timers and must have exactly one default timer. Timers aren't independently addressable. Updating **timers** replaces the entire collection.

For request bodies, use the canonical `#microsoft.graph...` form of `@odata.type` on polymorphic condition objects. Service responses can omit `@odata.type` on non-polymorphic objects such as **slaPolicyDefinition**, **slaPolicyTimer**, and **slaPolicyRecalculateCondition**.

Inherits from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-casetypeconfiguration-list-slapolicies.md)|[microsoft.graph.security.caseManagement.slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) collection|Get the SLA policies configured for a single case type.|
|[Create](../api/security-casemanagement-casetypeconfiguration-post-slapolicies.md)|[microsoft.graph.security.caseManagement.slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md)|Create an SLA policy for a single case type.|
|[Get](../api/security-casemanagement-slapolicydefinition-get.md)|[microsoft.graph.security.caseManagement.slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md)|Get an SLA policy, including its criteria and timers.|
|[Update](../api/security-casemanagement-slapolicydefinition-update.md)|[microsoft.graph.security.caseManagement.slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md)|Update the properties of an SLA policy.|
|[Delete](../api/security-casemanagement-casetypeconfiguration-delete-slapolicies.md)|None|Delete an SLA policy.|

## Properties

For supported query parameters when listing policies, see [List slaPolicies](../api/security-casemanagement-casetypeconfiguration-list-slapolicies.md#optional-query-parameters).

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The identifier of the identity that created the policy. Read-only. Inherited from **caseManagementEntity**.|
|createdDateTime|DateTimeOffset|The date and time when the policy was created, in ISO 8601 format and UTC. Read-only. Inherited from **caseManagementEntity**.|
|description|String|The description of the policy. Maximum length: 5,000 characters.|
|displayName|String|The display name of the policy. Must be unique across the tenant, using a case-insensitive comparison. Maximum length: 150 characters.|
|exitCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that removes a case from the policy's scope.|
|id|String|The unique, server-generated identifier of the policy. Read-only. Inherited from **caseManagementEntity**.|
|isActive|Boolean|Whether the policy is actively evaluated. Inactive policies are excluded from new case evaluations. The default value on creation is `true`.|
|lastModifiedBy|String|The identifier of the identity that last modified the policy. Read-only. Inherited from **caseManagementEntity**.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified, in ISO 8601 format and UTC. Read-only. Inherited from **caseManagementEntity**.|
|pauseCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that pauses the timer while a case matches it.|
|recalculateCondition|[microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition](../resources/security-casemanagement-slapolicyrecalculatecondition.md)|The settings that control whether elapsed time resets when the policy is recalculated.|
|setCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition a case must match to enter the policy's scope. When omitted, the policy applies to all cases of its owning case type. The maximum nesting depth is two.|
|timers|[microsoft.graph.security.caseManagement.slaPolicyTimer](../resources/security-casemanagement-slapolicytimer.md) collection|The embedded warning and breach timers, evaluated in **order**, lowest first. Maximum: 15 timers. Exactly one timer must have **isDefault** set to `true`. Updating this property replaces the entire collection.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyDefinition",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyDefinition",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "description": "String",
  "setCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock"
  },
  "exitCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock"
  },
  "pauseCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock"
  },
  "recalculateCondition": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition",
    "shouldResetTime": "Boolean"
  },
  "isActive": "Boolean",
  "timers": [
    {
      "policyTimerId": "String",
      "order": "Int32",
      "filters": {
        "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock"
      },
      "isDefault": "Boolean",
      "warningThresholdInMinutes": "Int32",
      "breachThresholdInMinutes": "Int32"
    }
  ]
}
```
