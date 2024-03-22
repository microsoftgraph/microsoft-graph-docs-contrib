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

Inherits from [entity](../resources/entity.md).

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
|aadDeviceId|String| The Microsoft Entra device ID for the Cloud PC, also known as the Azure Active Directory (Azure AD) device ID, that consists of 32 characters in a GUID format. Generated on a VM joined to Microsoft Entra ID. Read-only.                                                                                                                                                                      |
|displayName|String| The display name for the Cloud PC. Maximum length is 64 characters. Read-only. You can use the [cloudPC: rename](../api/cloudpc-rename.md) API to modify the Cloud PC name.                                                                                                                                                                                   |
|gracePeriodEndDateTime|DateTimeOffset| The date and time when the grace period ends and reprovisioning or deprovisioning happen. Required only if the status is `inGracePeriod`. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                       |
|id|String| The unique identifier of the customer-facing Cloud PC entity that consists of 32 characters in a GUID format. Read-only. Inherited from [entity](../resources/entity.md).                                                                                                                                                                                                                  |
|imageDisplayName|String| The name of the operating system image used for the Cloud PC. Maximum length is 50 characters. Only letters (A-Z, a-z), numbers (0-9), and special characters (-,_,.) are allowed for this property. The property value can't begin or end with an underscore. Read-only.|
|lastModifiedDateTime|DateTimeOffset| The last modified date and time of the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                                       |
|managedDeviceId|String| The Intune enrolled device ID for the Cloud PC that consists of 32 characters in a GUID format. The **managedDeviceId** property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.                                                                         |
|managedDeviceName|String| The Intune enrolled device name for the Cloud PC. The **managedDeviceName** property of Windows 365 Business Cloud PCs is always null as Windows 365 Business Cloud PCs aren't Intune-enrolled automatically by Windows 365. Read-only.                                                                                                   |
|onPremisesConnectionName|String| The on-premises connection that applied during the provisioning of Cloud PCs. Read-only.                                                                                                                                                                                                                                |
|provisioningPolicyId|String| The provisioning policy ID for the Cloud PC that consists of 32 characters in a GUID format. A policy defines the type of Cloud PC the user wants to create. Read-only.                                                                                                                                                                                                                                                                        |
|provisioningPolicyName|String| The provisioning policy that applied during the provisioning of Cloud PCs. Maximum length is 120 characters. Read-only.                                                                                                                                                                                                      |
|provisioningType|[cloudPcProvisioningType](#cloudpcprovisioningtype-values)| The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: `dedicated`, `shared`, `unknownFutureValue`. The default value is `dedicated`.                                                                                                                                      |
|servicePlanId|String| The service plan ID for the Cloud PC that consists of 32 characters in a GUID format. For more details about service plans, see [Product names and service plan identifiers for licensing](/entra/identity/users/licensing-service-plan-reference). Read-only.                                                                                               
|servicePlanName|String| The service plan name for the customer-facing Cloud PC entity. Read-only.                                                                                                                                                                                                                                     |
|userPrincipalName|String| The user principal name (UPN) of the user assigned to the Cloud PC. Maximum length is 113 characters. For more details on username policies, see [Password policies and account restrictions in Microsoft Entra ID](/entra/identity/authentication/concept-sspr-policy#username-policies). Read-only.                       |

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
