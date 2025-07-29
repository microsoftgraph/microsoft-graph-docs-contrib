---
title: "protectionPolicyBase resource type"
description: "Contains details about protection policies applied to Microsoft 365 data."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection policy
ms.date: 08/06/2024
ms.custom: sfi-ga-nochange
---

# protectionPolicyBase resource type

Namespace: microsoft.graph

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
|id|String|The unique identifier of the protection rule associated with the policy.|
|displayName|String|The name of the policy to be created.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
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

