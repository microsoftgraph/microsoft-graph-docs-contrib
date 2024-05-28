---
title: "oneDriveForBusinessProtectionPolicy resource type"
description: "Describes oneDriveForBusinessProtectionPolicy protection policy and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# oneDriveForBusinessProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details about protection policies applied to Microsoft 365 data in an organization. Protection policies are defined by the Global Admin (or the SharePoint Online Admin or Exchange Online Admin) and include what data to protect, when to protect it, and for what time period to retain the protected data for a single Microsoft 365 service.


Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create oneDriveForBusinessProtectionPolicy](../api/backuprestoreroot-post-onedriveforbusinessprotectionpolicies.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Create a new [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Update oneDriveForBusinessProtectionPolicy](../api/onedriveforbusinessprotectionpolicy-update.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Update the properties of an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|The name of the policy to be created.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|status|[protectionPolicyStatus](../resources/onedriveforbusinessprotectionpolicy.md#protectionpolicystatus-values)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

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
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|This derived entity contains the onedrive for business expression and other metadata. It is associated to the one drive for business.|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|This derived entity contains the protection units that refers to the onedrive for business that are being protected under the onedriveforbusiness protection policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy",
  "baseType": "microsoft.graph.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oneDriveForBusinessProtectionPolicy",
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
  }
}
```

