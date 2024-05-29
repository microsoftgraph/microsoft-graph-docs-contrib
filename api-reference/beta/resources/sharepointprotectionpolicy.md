---
title: "sharePointProtectionPolicy resource type"
description: "Describes sharepoint protection policy and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# sharePointProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

SharePoint protection policy represents the plan defined by the Global Admin or SharePoint Online Admin to protect SharePoint Online. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single Microsoft 365 service.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create sharePointProtectionPolicy](../api/backuprestoreroot-post-sharepointprotectionpolicies.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Create a new [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|
|[Update sharePointProtectionPolicy](../api/sharepointprotectionpolicy-update.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Update the properties of a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Retention settings for the policy.|
|status|[protectionPolicyStatus](../resources/sharepointprotectionpolicy.md#protectionpolicystatus-values)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values

|Member | Description |
|:------|:------------|
|active | All units are in protected state, policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected, policy status is activeWithErrors.|
|inactive | All units are in unprotected state, policy status is inactive.|
|updating | Some/All units are in protectRequested/unprotectRequested/removeRequested state, policy status is updating.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteInclusionRules|[siteProtectionRule](../resources/siteprotectionrule.md) collection|This derived entity contains the site expression and other metadata. It is associated to the SharePoint Protection policy.|
|siteProtectionUnits|[siteProtectionUnit](../resources/siteprotectionunit.md) collection| This derived entity contains the protection units that refers to the sites that are being protected under the site protection policy.|

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
