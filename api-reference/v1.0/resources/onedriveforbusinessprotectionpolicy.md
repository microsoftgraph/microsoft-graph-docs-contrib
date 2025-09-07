---
title: "oneDriveForBusinessProtectionPolicy resource type"
description: "Contains details about protection policies applied to Microsoft 365 data in an organization. "
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: OneDrive for Business protection policy
ms.date: 08/06/2024
ms.custom: sfi-ga-nochange
---

# oneDriveForBusinessProtectionPolicy resource type

Namespace: microsoft.graph

Contains details about protection policies applied to Microsoft 365 data in an organization. Protection policies are defined by the Global Admin (or the SharePoint Online Admin or Exchange Online Admin) and include what data to protect, when to protect it, and for what time period to retain the protected data for a single Microsoft 365 service.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-onedriveforbusinessprotectionpolicies.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Create a new [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Update](../api/onedriveforbusinessprotectionpolicy-update.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Update the properties of a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated with the policy.|
|displayName|String|The name of the policy to be created.|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|status|[protectionPolicyStatus](../resources/onedriveforbusinessprotectionpolicy.md#protectionpolicystatus-values)|Status of the policy. The value is the aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values

|Member | Description |
|:------|:------------|
|active | All units are protected.|
|activeWithErrors | Some units are protected and others are unprotected.|
|inactive | All units are unprotected.|
|updating | Some or all units are in a `protectRequested`, `unprotectRequested`, or `removeRequested` state.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|Contains the details of the Onedrive for Business protection rule.|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|Contains the protection units associated with a  OneDrive for Business protection policy.|

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

