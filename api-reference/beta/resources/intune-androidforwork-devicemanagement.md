---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for Android for Work settings functionality under device management."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for Android for Work settings functionality under device management.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-androidforwork-devicemanagement-get.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-androidforwork-devicemanagement-update.md)|[deviceManagement](../resources/intune-shared-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-shared-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String||

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|androidForWorkSettings|[androidForWorkSettings](../resources/intune-androidforwork-androidforworksettings.md)|The singleton Android for Work settings entity.|
|androidForWorkAppConfigurationSchemas|[androidForWorkAppConfigurationSchema](../resources/intune-androidforwork-androidforworkappconfigurationschema.md) collection|Android for Work app configuration schema entities.|
|androidForWorkEnrollmentProfiles|[androidForWorkEnrollmentProfile](../resources/intune-androidforwork-androidforworkenrollmentprofile.md) collection|Android for Work enrollment profile entities.|
|androidManagedStoreAccountEnterpriseSettings|[androidManagedStoreAccountEnterpriseSettings](../resources/intune-androidforwork-androidmanagedstoreaccountenterprisesettings.md)|The singleton Android managed store account enterprise settings entity.|
|androidManagedStoreAppConfigurationSchemas|[androidManagedStoreAppConfigurationSchema](../resources/intune-androidforwork-androidmanagedstoreappconfigurationschema.md) collection|Android Enterprise app configuration schema entities.|
|androidDeviceOwnerEnrollmentProfiles|[androidDeviceOwnerEnrollmentProfile](../resources/intune-androidforwork-androiddeviceownerenrollmentprofile.md) collection|Android device owner enrollment profile entities.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```