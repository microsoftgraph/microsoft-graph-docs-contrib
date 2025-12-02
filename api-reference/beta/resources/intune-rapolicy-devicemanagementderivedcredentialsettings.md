---
title: "deviceManagementDerivedCredentialSettings resource type"
description: "Entity that describes tenant level settings for derived credentials"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementDerivedCredentialSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that describes tenant level settings for derived credentials

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementDerivedCredentialSettingses](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-list.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md) collection|List properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md) objects.|
|[Get deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-get.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md)|Read properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md) object.|
|[Create deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-create.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md)|Create a new [deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md) object.|
|[Delete deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-delete.md)|None|Deletes a [deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md).|
|[Update deviceManagementDerivedCredentialSettings](../api/intune-rapolicy-devicemanagementderivedcredentialsettings-update.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md)|Update the properties of a [deviceManagementDerivedCredentialSettings](../resources/intune-rapolicy-devicemanagementderivedcredentialsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Derived Credential|
|helpUrl|String|The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.|
|displayName|String|The display name for the profile.|
|issuer|[deviceManagementDerivedCredentialIssuer](../resources/intune-rapolicy-devicemanagementderivedcredentialissuer.md)|The derived credential provider to use. The possible values are: `intercede`, `entrustDatacard`, `purebred`, `xTec`.|
|notificationType|[deviceManagementDerivedCredentialNotificationType](../resources/intune-rapolicy-devicemanagementderivedcredentialnotificationtype.md)|The methods used to inform the end user to open Company Portal to deliver Wi-Fi, VPN, or email profiles that use certificates to the device. The possible values are: `none`, `companyPortal`, `email`.|
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