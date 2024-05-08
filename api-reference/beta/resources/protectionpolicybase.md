---
title: "protectionPolicyBase resource type"
description: "Describes protection policy base type resource and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# protectionPolicyBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin(or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) for protecting the M365 data of an organization. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single M365 service.
This is an abstract type.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List protectionPolicyBase objects](../api/backuprestoreroot-list-protectionpolicies.md)|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|Get a list of the [protectionPolicyBase](../resources/protectionpolicybase.md) objects and their properties.|
|[Create protectionPolicyBase](../api/backuprestoreroot-post-protectionpolicies.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Create a new [protectionPolicyBase](../resources/protectionpolicybase.md) object.|
|[Get protectionPolicyBase](../api/protectionpolicybase-get.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md) object.|
|[Update protectionPolicyBase](../api/protectionpolicybase-update.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Update the properties of a [protectionPolicyBase](../resources/protectionpolicybase.md) object.|
|[Delete protectionPolicyBase](../api/backuprestoreroot-delete-protectionpolicies.md)|None|Delete a [protectionPolicyBase](../resources/protectionpolicybase.md) object.|
|[activate](../api/protectionpolicybase-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy|
|[deactivate](../api/protectionpolicybase-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|	Deactivate an active protection policy|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Timestamp of last modification of this policy .|
|lastModifiedDateTime|DateTimeOffset|Identity of the person who last modified this policy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Complex type containing details of all the retention settings for the policy.|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|
|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are in protected state, policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected, policy status is activeWithErrors.|
|inactive | All units are in unprotected state, policy status is inactive.|
|updating | Some/All units are in protectRequested/unprotectRequested/removeRequested state, policy status is updating.|
|unknownFutureValue | Marker value for future compatibility.|

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

