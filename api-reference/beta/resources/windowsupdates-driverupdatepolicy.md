---
title: "driverUpdatePolicy resource type"
description: "Represents a policy that manages driver and firmware update approvals and deployments for targeted devices."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# driverUpdatePolicy resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that manages driver and firmware update approvals and deployments for targeted devices. Use the policy's approval rules and deployment rings to control when matching updates are approved and how they're offered.

Inherits from [policy](../resources/windowsupdates-policy.md).

## Methods

This resource is part of a polymorphic collection managed by the [policy resource](../resources/windowsupdates-policy.md) base type. Operations are performed through the base type endpoints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection|The rules that determine how matching driver and firmware update content is approved. Inherited from [policy](../resources/windowsupdates-policy.md).|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. Read-only. Inherited from [policy](../resources/windowsupdates-policy.md).|
|description|String|The policy description. The maximum length is 1,500 characters. Inherited from [policy](../resources/windowsupdates-policy.md).|
|displayName|String|The policy display name. The maximum length is 200 characters. Inherited from [policy](../resources/windowsupdates-policy.md).|
|id|String|The unique identifier for the policy. Read-only. Inherited from [policy](../resources/windowsupdates-policy.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. Read-only. Inherited from [policy](../resources/windowsupdates-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableCatalogs|[microsoft.graph.windowsUpdates.applicableCatalog](../resources/windowsupdates-applicablecatalog.md) collection|The driver and firmware update catalog entries that apply to devices targeted by the policy. Inherited from [policy](../resources/windowsupdates-policy.md).|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection|The existing applicable-content collection. For driver and firmware update applicability, use **applicableCatalogs**. Inherited from [policy](../resources/windowsupdates-policy.md).|
|approvals|[microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) collection|The update content approvals associated with the policy. Inherited from [policy](../resources/windowsupdates-policy.md).|
|rings|[microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) collection|The deployment rings that define targeting, deferral, and pause settings for the policy. Inherited from [policy](../resources/windowsupdates-policy.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdatePolicy",
  "baseType": "microsoft.graph.windowsUpdates.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdatePolicy",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateApprovalRule"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
