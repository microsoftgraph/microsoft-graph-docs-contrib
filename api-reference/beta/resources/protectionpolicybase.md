---
title: "protectionPolicyBase resource"
description: "Describes Protection Policy base type resource and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# protectionPolicyBase resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin (or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) for protecting the M365 data of an organization. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single M365 service.
This is an abstract type.

This is the base type for [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md), [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) and [onedriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List protectionPolicyBase](../api/protectionpolicybase-list.md)|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|Get a list of the [protectionPolicyBase](../resources/protectionpolicybase.md) and their properties.|
|[Get protectionPolicyBase](../api/protectionpolicybase-get.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md).|
|[Delete protectionPolicyBase](../api/protectionpolicybase-delete.md)|None|Delete a [protectionPolicyBase](../resources/protectionpolicybase.md).|
|[activate](../api/protectionpolicybase-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy.|
|[deactivate](../api/protectionpolicybase-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Deactivate an active protection policy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.||
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Contains the retention setting details for the policy.|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|The aggregated status of protection units of the policy. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are in a protected state; the policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected; the policy status is `activeWithErrors`.|
|inactive | All units are in an unprotected state; the policy status is inactive.|
|updating | Some/all units are in a `protectRequested`, `unprotectRequested, or `removeRequested` state; the policy status is updating.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

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

