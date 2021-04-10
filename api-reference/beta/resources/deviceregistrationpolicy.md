---
title: "deviceRegistrationPolicy resource type"
description: "Properties and relationships of the deviceRegistrationPolicy resource"
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---

# deviceRegistrationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory tenant that control quota restrictions, additional authentication and authorization policies to register device identities to your organization. Only the read and update operations are supported on this resource; create and delete are not supported.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get deviceRegistrationPolicy](../api/deviceregistrationpolicy-get.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Read the properties and relationships of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|
|[Update deviceRegistrationPolicy](../api/deviceregistrationpolicy-update.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Update the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureADJoin|[azureAdJoinPolicy](../resources/azureadjoinpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. [Learn more](https://docs.microsoft.com/en-us/azure/active-directory/devices/overview) about device identities in Azure AD.|
|azureADRegistration|[azureADRegistrationPolicy](../resources/azureadregistrationpolicy.md)|Specifies the authorization policy for controlling registration of new devices using Azure AD registered within your organization. [Learn more](https://docs.microsoft.com/en-us/azure/active-directory/devices/overview) about device identities in Azure AD.|
|description|String|Description at the time of policy creation. Read-only.|
|displayName|String|Name at the time of policy creation. Read-only.|
|id|String| Identifier of the policy at the time of policy creation. Read-only.|
|multiFactorAuthConfiguration|multiFactorAuthConfiguration|Specifies the authentication policy for a user to complete registration using Azure AD Join or Azure AD registered within your organization. Possible values are: `notRequired`, `required`,`unknownFutureValue`.|
|userDeviceQuota|Int32|Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations.|

## Special considerations for using `multiFactorAuthConfiguration`
* The default value is **`notRequired`** at the time of policy creation.
* Resets to **`notRequired`** if not used in update of policy.

## Special considerations for using `userDeviceQuote`
* The default values is currently set to **`50`** at the time of policy creation.
* Resets to **`0`** if not used in update of policy. This indicates no devices are allowed to join per user.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceRegistrationPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceRegistrationPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "userDeviceQuota": "Integer",
  "multiFactorAuthConfiguration": "String",
  "azureADRegistration": {
    "@odata.type": "microsoft.graph.azureADRegistrationPolicy"
  },
  "azureADJoin": {
    "@odata.type": "microsoft.graph.azureAdJoinPolicy"
  }
}
```

