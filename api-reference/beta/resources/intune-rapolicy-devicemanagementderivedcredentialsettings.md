---
title: "deviceManagementDerivedCredentialSettings resource type"
description: "Entity that describes tenant level settings for derived credentials"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagementDerivedCredentialSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that describes tenant level settings for derived credentials

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementDerivedCredentialSettingses](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-list.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) collection|List properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) objects.|
|[Get deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-get.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Read properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|
|[Create deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-create.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Create a new [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|
|[Delete deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-delete.md)|None|Deletes a [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md).|
|[Update deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-update.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Update the properties of a [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Derived Credential|
|helpUrl|String|The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.|
|displayName|String|The display name for the profile.|
|issuer|[deviceManagementDerivedCredentialIssuer](../resources/intune-rapolicy-devicemanagementderivedcredentialissuer.md)|The derived credential provider to use. Possible values are: `intercede`, `entrustDatacard`, `purebred`, `xTec`.|
|notificationType|[deviceManagementDerivedCredentialNotificationType](../resources/intune-rapolicy-devicemanagementderivedcredentialnotificationtype.md)|The methods used to inform the end user to open Company Portal to deliver Wi-Fi, VPN, or email profiles that use certificates to the device. Possible values are: `none`, `companyPortal`, `email`.|
|renewalThresholdPercentage|Int32|The nominal percentage of time before certificate renewal is initiated by the client.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementDerivedCredentialSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementDerivedCredentialSettings",
  "id": "String (identifier)",
  "helpUrl": "String",
  "displayName": "String",
  "issuer": "String",
  "notificationType": "String",
  "renewalThresholdPercentage": 1024
}
```