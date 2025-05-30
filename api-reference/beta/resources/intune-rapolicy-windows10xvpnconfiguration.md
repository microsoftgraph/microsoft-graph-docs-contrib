---
title: "windows10XVpnConfiguration resource type"
description: "Windows X VPN configuration profile"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windows10XVpnConfiguration resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows X VPN configuration profile


Inherits from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10XVpnConfigurations](../api/intune-rapolicy-windows10xvpnconfiguration-list.md)|[windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md) collection|List properties and relationships of the [windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md) objects.|
|[Get windows10XVpnConfiguration](../api/intune-rapolicy-windows10xvpnconfiguration-get.md)|[windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md)|Read properties and relationships of the [windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md) object.|
|[Create windows10XVpnConfiguration](../api/intune-rapolicy-windows10xvpnconfiguration-create.md)|[windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md)|Create a new [windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md) object.|
|[Delete windows10XVpnConfiguration](../api/intune-rapolicy-windows10xvpnconfiguration-delete.md)|None|Deletes a [windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md).|
|[Update windows10XVpnConfiguration](../api/intune-rapolicy-windows10xvpnconfiguration-update.md)|[windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md)|Update the properties of a [windows10XVpnConfiguration](../resources/intune-rapolicy-windows10xvpnconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Profile identifier Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|version|Int32|Version of the profile Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|displayName|String|Profile display name Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|description|String|Profile description Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|creationDateTime|DateTimeOffset|DateTime profile was created Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime profile was last modified Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|roleScopeTagIds|String collection|Scope Tags Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|serverApplicabilityRules|[applicabilityRule](../resources/intune-rapolicy-applicabilityrule.md) collection|The list of Applicability Rules for a Device Configuration Profile Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|
|authenticationCertificateId|Guid|ID to the Authentication Certificate|
|customXmlFileName|String|Custom Xml file name.|
|customXml|Binary|Custom XML commands that configures the VPN connection. (UTF8 byte encoding)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[deviceManagementResourceAccessProfileAssignment](../resources/intune-rapolicy-devicemanagementresourceaccessprofileassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceManagementResourceAccessProfileBase](../resources/intune-rapolicy-devicemanagementresourceaccessprofilebase.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10XVpnConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10XVpnConfiguration",
  "id": "String (identifier)",
  "version": 1024,
  "displayName": "String",
  "description": "String",
  "creationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "serverApplicabilityRules": [
    {
      "@odata.type": "microsoft.graph.applicabilityRule",
      "filterType": "String"
    }
  ],
  "authenticationCertificateId": "Guid",
  "customXmlFileName": "String",
  "customXml": "binary"
}
```