---
title: "endpointPrivilegeManagementProvisioningStatus resource type"
description: "Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# endpointPrivilegeManagementProvisioningStatus resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get endpointPrivilegeManagementProvisioningStatus](../api/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus-get.md)|[endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md)|Read properties and relationships of the [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md) object.|
|[Update endpointPrivilegeManagementProvisioningStatus](../api/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus-update.md)|[endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md)|Update the properties of a [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier represents Intune Account identifier.|
|licenseType|[licenseType](../resources/intune-deviceconfig-licensetype.md)|Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid. Possible values are: `notPaid`, `paid`, `trial`, `unknownFutureValue`.|
|onboardedToMicrosoftManagedPlatform|Boolean|Indicates whether tenant is onboarded to Microsoft Managed Platform - Cloud (MMPC). When set to true, implies tenant is onboarded and when set to false, implies tenant is not onboarded. Default set to false.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.endpointPrivilegeManagementProvisioningStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.endpointPrivilegeManagementProvisioningStatus",
  "id": "String (identifier)",
  "licenseType": "String",
  "onboardedToMicrosoftManagedPlatform": true
}
```