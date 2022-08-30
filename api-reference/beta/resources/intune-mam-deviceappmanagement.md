---
title: "deviceAppManagement resource type"
description: "Device app management singleton entity."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceAppManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device app management singleton entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedAppPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Managed app policies.|
|iosManagedAppProtections|[iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) collection|iOS managed app policies.|
|androidManagedAppProtections|[androidManagedAppProtection](../resources/intune-shared-androidmanagedappprotection.md) collection|Android managed app policies.|
|windowsManagedAppProtections|[windowsManagedAppProtection](../resources/intune-mam-windowsmanagedappprotection.md) collection|Windows managed app policies.|
|defaultManagedAppProtections|[defaultManagedAppProtection](../resources/intune-mam-defaultmanagedappprotection.md) collection|Default managed app policies.|
|targetedManagedAppConfigurations|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) collection|Targeted managed app configurations.|
|mdmWindowsInformationProtectionPolicies|[mdmWindowsInformationProtectionPolicy](../resources/intune-shared-mdmwindowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are MDM enrolled.|
|windowsInformationProtectionPolicies|[windowsInformationProtectionPolicy](../resources/intune-mam-windowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are not MDM enrolled.|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|The managed app registrations.|
|managedAppStatuses|[managedAppStatus](../resources/intune-mam-managedappstatus.md) collection|The managed app statuses.|
|windowsInformationProtectionDeviceRegistrations|[windowsInformationProtectionDeviceRegistration](../resources/intune-mam-windowsinformationprotectiondeviceregistration.md) collection|Windows information protection device registrations that are not MDM enrolled.|
|windowsInformationProtectionWipeActions|[windowsInformationProtectionWipeAction](../resources/intune-mam-windowsinformationprotectionwipeaction.md) collection|Windows information protection wipe actions.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```