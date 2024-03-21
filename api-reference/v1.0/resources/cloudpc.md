---
title: "cloudPC resource type"
description: "Represents a cloud-managed virtual desktop."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

Represents a cloud-managed virtual desktop. This Cloud PC is also enrolled into Intune and managed through the Microsoft Endpoint Manager portal, so the Cloud PC also has a corresponding Intune managed device ID.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List the [cloudPC](../resources/cloudpc.md) devices in a tenant.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a specific [cloudPC](../resources/cloudpc.md) object.|
|[End grace period](../api/cloudpc-endgraceperiod.md)|None|End the grace period for a specific [cloudPC](../resources/cloudpc.md) object.|
|[Reboot](../api/cloudpc-reboot.md)|None|Reboot a specific [cloudPC](../resources/cloudpc.md) object.|
|[Rename](../api/cloudpc-rename.md)|None|Rename a specific [cloudPC](../resources/cloudpc.md) object.|
|[Troubleshoot](../api/cloudpc-troubleshoot.md)|None|Troubleshoot a specific [cloudPC](../resources/cloudpc.md) object.|
|[Restore](../api/cloudpc-restore.md)|None|Restore a specific [cloudPC](../resources/cloudpc.md) object to a previous state from a snapshot.|

## Properties

|Property|Type| Description                                                                                                                                                                                                                                                                                                         |
|:---|:---|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|aadDeviceId|String| The Cloud PC’s Entra (aka Azure Active Directory - Azure AD) device ID. 32 characters in GUID format. Generated on a VM joined AAD. Read Only.                                                                                                                                                                      |
|displayName|String| The Cloud PC display name with 64 max char limitation . Read-only . Cloud PC name can be modified using specific action [Rename](../api/cloudpc-rename.md).                                                                                                                                                                                   |
|gracePeriodEndDateTime|DateTimeOffset| The date and time when the grace period ends and reprovisioning or deprovisioning happen. Required only if the status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                       |
|id|String| It is the identifier of customer facing Cloud PC entity. 32 characters in GUID format. Read Only.                                                                                                                                                                                                                   |
|imageDisplayName|String| The name of the Operating System image used for the Cloud PC. This property has max length limitation of 50 characters. Only letters (A-Z, a-z), numbers (0-9) and special characters(-,_,.) are allowed for imageDisplayName, and does not support `_` at the beginning or ending of the property value. Read Only.|
|lastModifiedDateTime|DateTimeOffset| The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                                       |
|managedDeviceId|String| The Cloud PC’s Intune enrolled device ID. 32 characters in GUID format. ManagedDeviceId of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs are not Intune-enrolled automatically by Windows 365. Read Only.                                                                         |
|managedDeviceName|String| The Cloud PC’s Intune enrolled device name. managedDeviceName of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs are not Intune-enrolled automatically by Windows 365. Read Only.                                                                                                   |
|onPremisesConnectionName|String| The on-Premises connection that applied during provisioning of cloud PCs. Read Only.                                                                                                                                                                                                                                |
|provisioningPolicyId|String| The Cloud PC's provisioning policy ID. 32 characters in GUID format. A policy defines what kind of Cloud PC that the user wants to create. Read Only.                                                                                                                                                                                                                                                                        |
|provisioningPolicyName|String| The provisioning policy that applied during provisioning of cloud PCs with 120 max size limitation. Read Only.                                                                                                                                                                                                      |
|provisioningType|[cloudPcProvisioningType](#cloudpcprovisioningtype-values)| The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: `dedicated`, `shared`, `unknownFutureValue`. The default value is `dedicated`.                                                                                                                                      |
|servicePlanId|String| The Cloud PC's service plan ID. 32 characters in GUID format. For service plan, you can learn more information in https://learn.microsoft.com/entra/identity/users/licensing-service-plan-reference. Read Only.                                                                                               
|servicePlanName|String| The Cloud PC's service plan name of customer facing Cloud PC entity. Read Only.                                                                                                                                                                                                                                     |
|userPrincipalName|String| The user principal name (UPN) of the user assigned to the Cloud PC with 113 max size limitation. You can learn more information in https://learn.microsoft.com/entra/identity/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts. Read Only.                       |

### cloudPcProvisioningType values

| Member              | Description                                                                           |
|:--------------------|:--------------------------------------------------------------------------------------|
| dedicated           | Indicates that a dedicated license is used for provisioning Cloud PCs. Default value. |
| shared              | Indicates that a shared license is used for provisioning Cloud PCs.                   |
| unknownFutureValue  | Evolvable enumeration sentinel value. Don't use.                                      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPC",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPC",
  "aadDeviceId": "String",
  "displayName": "String",
  "gracePeriodEndDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "imageDisplayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "onPremisesConnectionName": "String",
  "provisioningPolicyId": "String",
  "provisioningPolicyName": "String",
  "provisioningType": "String",
  "servicePlanId": "String",
  "servicePlanName": "String",
  "userPrincipalName": "String"
}
```
