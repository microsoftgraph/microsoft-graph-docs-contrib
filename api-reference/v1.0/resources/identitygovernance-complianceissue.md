---
title: "complianceIssue resource type"
description: "Represents an issue that describes why an identity is non-compliant with its governing lifecycle policy."
author: "siaggarwal-ops"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# complianceIssue resource type

Namespace: microsoft.graph.identityGovernance

Represents an issue that describes why an identity is non-compliant with its governing lifecycle policy. This type is the base type for compliance issues; a collection of compliance issues can contain both base and derived instances.

The following derived type is available:

- [attestationComplianceIssue](../resources/identitygovernance-attestationcomplianceissue.md)

Instances are differentiated by the **@odata.type** property.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A human-readable description of the compliance issue.|
|governingPolicyReferenceId|String|The identifier of the lifecycle policy that generated the compliance issue.|
|id|String|The unique identifier for the compliance issue. Inherited from [entity](../resources/entity.md).|
|issueCode|String|A code that identifies the type of compliance issue.|
|ruleType|String|The type of rule that generated the compliance issue, so callers can identify which rule caused non-compliance.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.complianceIssue",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.complianceIssue",
  "id": "String (identifier)",
  "issueCode": "String",
  "description": "String",
  "governingPolicyReferenceId": "String",
  "ruleType": "String"
}
```
