---
title: "attestationComplianceIssue resource type"
description: "Represents a compliance issue that indicates an identity failed to meet an attestation requirement of its lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# attestationComplianceIssue resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a compliance issue that indicates an identity failed to meet an attestation requirement of its lifecycle policy.

Inherits from [complianceIssue](../resources/identitygovernance-complianceissue.md).


## Methods
For the list of operations, see the methods of the [complianceIssue](../resources/identitygovernance-complianceissue.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationBlockReasons|String collection|The reasons that prevented the identity from being attested.|
|description|String|A human-readable description of the compliance issue. Inherited from [complianceIssue](../resources/identitygovernance-complianceissue.md).|
|governingPolicyReferenceId|String|The identifier of the lifecycle policy that generated the compliance issue. Inherited from [complianceIssue](../resources/identitygovernance-complianceissue.md).|
|id|String|The unique identifier for the compliance issue. Inherited from [entity](../resources/entity.md).|
|issueCode|String|A code that identifies the type of compliance issue. Inherited from [complianceIssue](../resources/identitygovernance-complianceissue.md).|
|ruleType|String|The type of rule that generated the compliance issue, so callers can identify which rule caused non-compliance. Inherited from [complianceIssue](../resources/identitygovernance-complianceissue.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.attestationComplianceIssue",
  "baseType": "microsoft.graph.identityGovernance.complianceIssue",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.attestationComplianceIssue",
  "id": "String (identifier)",
  "issueCode": "String",
  "description": "String",
  "governingPolicyReferenceId": "String",
  "ruleType": "String",
  "attestationBlockReasons": [
    "String"
  ]
}
```
