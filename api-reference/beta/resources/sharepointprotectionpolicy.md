---
title: "sharePointProtectionPolicy resource type"
description: "Describes sharepoint protection policy and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: SharePoint protection policy
ms.date: 08/03/2024
---

# sharePointProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a plan defined by the SharePoint Online admin to protect SharePoint Online, including what data to protect, when to protect it, and for what time period to retain the protected data. Currently, policies are supported only for  SharePoint Online sites in the main geolocation only; multi-geo tenants aren't supported.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-sharepointprotectionpolicies.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Create a new [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|
|[Update](../api/sharepointprotectionpolicy-update.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Update the properties of a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|displayName|String|The name of the policy being created. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|id|String|The unique identifier of the protection rule associated to the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|isEnabled|Boolean|Indicates whether the policy is enabled. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who modified the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|protectionPolicyArtifactCount|[protectionPolicyArtifactCount](../resources/protectionpolicyartifactcount.md)|The count of artifacts in the protection policy by status. Returned only on `$select`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Retention settings for the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|The status of the policy. The value is an aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteInclusionRules|[siteProtectionRule](../resources/siteprotectionrule.md) collection|The rules associated with the SharePoint Protection policy.|
|siteProtectionUnits|[siteProtectionUnit](../resources/siteprotectionunit.md) collection| The protection units (sites) that are protected under the site protection policy.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointProtectionPolicy",
  "baseType": "microsoft.graph.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointProtectionPolicy",
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
