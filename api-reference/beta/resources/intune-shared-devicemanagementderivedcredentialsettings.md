---
title: "deviceManagementDerivedCredentialSettings resource type"
description: "Intune Shared Devicemanagementderivedcredentialsettings Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "Intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementDerivedCredentialSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The deviceManagementDerivedCredentialSettings resource represents a container whose contents vary according to workflow, including:  

- Device configuration settings
- RA Policy

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementDerivedCredentialSettings](../api/intune-shared-devicemanagementderivedcredentialsettings-get.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Read properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|
|[Update deviceManagementDerivedCredentialSettings](../api/intune-shared-devicemanagementderivedcredentialsettings-update.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Update the properties of a [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|
|**Resource Access Policy**|
|[List deviceManagementDerivedCredentialSettingses](../api/intune-shared-devicemanagementderivedcredentialsettings-list.md)|[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) collection|List properties and relationships of the [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) objects.|
[deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md)|Create a new [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md) object.|
|[Delete deviceManagementDerivedCredentialSettings](../api/intune-shared-devicemanagementderivedcredentialsettings-delete.md)|None|Deletes a [deviceManagementDerivedCredentialSettings](../resources/intune-shared-devicemanagementderivedcredentialsettings.md).|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Derived Credential|

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
  "id": "String (identifier)"
}
```
