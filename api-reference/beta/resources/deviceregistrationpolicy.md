---
title: "deviceRegistrationPolicy resource type"
description: "Represents the policy scope that controls quota restrictions, additional authentication, and authorization policies for the Azure Active Directory tenant."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---
# deviceRegistrationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope that controls quota restrictions, additional authentication, and authorization policies to register device identities to your organization.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get deviceRegistrationPolicy](../api/deviceregistrationpolicy-get.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Read the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|
|[Update deviceRegistrationPolicy](../api/deviceregistrationpolicy-update.md)|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|Update the properties of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|azureADJoin|[azureAdJoinPolicy](../resources/azureadjoinpolicy.md)|Specifies the authorization policy for controlling registration of new devices using **Azure AD Join** within your organization. Required. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).|
|azureADRegistration|[azureADRegistrationPolicy](../resources/azureadregistrationpolicy.md)|Specifies the authorization policy for controlling registration of new devices using **Azure AD registered** within your organization. Required. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).|
|description|String|The description of the device registration policy. It is always set to `Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks`. Read-only.|
|displayName|String|The name of the device registration policy. It is always set to `Device Registration Policy`. Read-only.|
|id|String| The identifier of the device registration policy. It is always set to `deviceRegistrationPolicy`. Read-only.|
|localAdminPassword|[localAdminPasswordSettings](../resources/localadminpasswordsettings.md)| Specifies the setting for **Local Admin Password Solution (LAPS)** within your organization.|
|multiFactorAuthConfiguration|multiFactorAuthConfiguration|Specifies the authentication policy for a user to complete registration using **Azure AD Join** or **Azure AD registered** within your organization. The possible values are: `0` (meaning `notRequired`), `1` (meaning `required`), and `2` (meaning `unknownFutureValue`). The default value is `0`. |
|userDeviceQuota|Int32|Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations. The default value is set to 50. If this property is not specified during the policy update operation, it is automatically reset to `0` to indicate that users are not allowed to join any devices. |


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
  },
  "localAdminPassword": {
    "@odata.type": "microsoft.graph.localAdminPasswordSettings"
  }
}
```
