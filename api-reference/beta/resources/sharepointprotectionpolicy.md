---
title: "sharePointProtectionPolicy resource type"
description: "Describes sharepoint protection policy and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: backup-and-restore
doc_type: resourcePageType
---

# sharePointProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin or SharePoint Online Admin to protect SharePoint Online. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for SharePoint Online.


Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sharePointProtectionPolicy objects](../api/backuprestoreroot-list-sharepointprotectionpolicies.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) collection|Get a list of the [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) objects and their properties.|
|[Create sharePointProtectionPolicy](../api/backuprestoreroot-post-sharepointprotectionpolicies.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Create a new [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object.|
|[Get sharePointProtectionPolicy](../api/sharepointprotectionpolicy-get.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Read the properties and relationships of a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object.|
|[Update sharePointProtectionPolicy](../api/sharepointprotectionpolicy-update.md)|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md)|Update the properties of a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object.|
|[Delete sharePointProtectionPolicy](../api/backuprestoreroot-delete-sharepointprotectionpolicies.md)|None|Delete a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object.|
|[activate](../api/sharepointprotectionpolicy-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy|
|[deactivate](../api/sharepointprotectionpolicy-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Deactivate an active protection policy|
|[List siteInclusionRules](../api/sharepointprotectionpolicy-list-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md) collection|Get the siteProtectionRule resources from the siteInclusionRules navigation property.|
|[Add siteProtectionRule](../api/sharepointprotectionpolicy-post-siteinclusionrules.md)|[siteProtectionRule](../resources/siteprotectionrule.md)|Add siteInclusionRules by posting to the siteInclusionRules collection.|
|[Remove siteInclusionRules](../api/sharepointprotectionpolicy-delete-siteinclusionrules.md)|None|Remove a [siteProtectionRule](../resources/siteprotectionrule.md) object.|
|[List siteProtectionUnits](../api/sharepointprotectionpolicy-list-siteprotectionunits.md)|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|Get the siteProtectionUnit resources from the siteProtectionUnits navigation property.|
|[Add siteProtectionUnit](../api/sharepointprotectionpolicy-post-siteprotectionunits.md)|[siteProtectionUnit](../resources/siteprotectionunit.md)|Add siteProtectionUnits by posting to the siteProtectionUnits collection.|
|[Remove siteProtectionUnits](../api/sharepointprotectionpolicy-delete-siteprotectionunits.md)|None|Remove a [siteProtectionUnit](../resources/siteprotectionunit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|identitySet|The identity of person who created the policy.|
|lastModifiedBy|identitySet|Timestamp of last modification of this policy .|
|lastModifiedDateTime|DateTimeOffset|Identity of the person who last modified this policy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Complex type containing details of all the retention settings for the policy.|
|status|[protectionPolicyStatus](../resources/sharepointprotectionpolicy.md#protectionpolicybase-resource-type)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are in protected state, policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected, policy status is activeWithErrors.|
|inactive | All units are in unprotected state, policy status is inactive.|
|updating | Some/All units are in protectRequested/unprotectRequested/removeRequested state, policy status is updating.|
|unknownFutureValue | Marker value for future compatibility.|

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
  "baseType": "microsoft.backupRestore.protectionPolicyBase",
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

