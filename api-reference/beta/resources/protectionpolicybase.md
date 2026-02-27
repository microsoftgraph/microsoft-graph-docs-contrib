---
title: "protectionPolicyBase resource type"
description: "Contains details about protection policies applied to Microsoft 365 data."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection policy
ms.date: 07/04/2024
ms.custom: sfi-ga-nochange
---

# protectionPolicyBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about protection policies applied to Microsoft 365 data in an organization. Protection policies are defined by the Global Admin (or the SharePoint Online Admin or Exchange Online Admin) and include what data to protect, when to protect it, and for what time period to retain the protected data for a single Microsoft 365 service.

Base type for [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md), [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md), and [onedriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-protectionpolicies.md)|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|Get a list of the [protectionPolicyBase](../resources/protectionpolicybase.md) and their properties.|
|[Get](../api/protectionpolicybase-get.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md).|
|[Delete](../api/protectionpolicybase-delete.md)|None|Delete a [protectionPolicyBase](../resources/protectionpolicybase.md).|
|[Activate](../api/protectionpolicybase-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy.|
|[Deactivate](../api/protectionpolicybase-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Deactivate an active protection policy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The name of the policy to be created.|
|id|String|The unique identifier of the protection rule associated with the policy.|
|isEnabled|Boolean|Indicates whether the policy is enabled.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|protectionPolicyArtifactCount|[protectionPolicyArtifactCount](../resources/protectionpolicyartifactcount.md)|The count of artifacts in the protection policy by status. Returned only on `$select`.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Contains the retention setting details for the policy.|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|The aggregated status of the protection units associated with the policy. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values

|Member | Description |
|:------|:------------|
|active | All units are protected.|
|activeWithErrors | Some units are protected and others are unprotected.|
|inactive | All units are unprotected.|
|updating | Some or all units are in a `protectRequested`, `unprotectRequested`, or `removeRequested` state.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.protectionPolicyBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionPolicyBase",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "protectionPolicyArtifactCount": {"@odata.type": "microsoft.graph.protectionPolicyArtifactCount"},
  "retentionSettings": [{"@odata.type": "microsoft.graph.retentionSetting"}],
  "status": "String"
}
```

