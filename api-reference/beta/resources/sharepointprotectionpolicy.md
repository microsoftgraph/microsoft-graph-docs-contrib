---
title: "sharePointProtectionPolicy resource type"
description: "Describes sharepoint protection policy and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: SharePoint protection policy
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
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|The name of the policy being created.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Retention settings for the policy.|
|status|[protectionPolicyStatus](../resources/sharepointprotectionpolicy.md#protectionpolicystatus-values)|The status of the policy. The value is an aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values

|Member | Description |
|:------|:------------|
|active | All units are protected.|
|activeWithErrors | Some units are protected while others are unprotected.|
|inactive | All units are unprotected.|
|updating | Some or all units are in a `protectRequested`, `unprotectRequested`, or `removeRequested` state.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "retentionSettings": [
    {
      "@odata.type": "microsoft.graph.retentionSetting"
    }
  ]
}
```
