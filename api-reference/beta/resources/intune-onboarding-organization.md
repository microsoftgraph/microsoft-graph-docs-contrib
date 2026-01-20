---
title: "organization resource type"
description: "The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# organization resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizations](../api/intune-onboarding-organization-list.md)|[organization](../resources/intune-onboarding-organization.md) collection|List properties and relationships of the [organization](../resources/intune-onboarding-organization.md) objects.|
|[Get organization](../api/intune-onboarding-organization-get.md)|[organization](../resources/intune-onboarding-organization.md)|Read properties and relationships of the [organization](../resources/intune-onboarding-organization.md) object.|
|[Update organization](../api/intune-onboarding-organization-update.md)|[organization](../resources/intune-onboarding-organization.md)|Update the properties of a [organization](../resources/intune-onboarding-organization.md) object.|
|[setMobileDeviceManagementAuthority action](../api/intune-onboarding-organization-setmobiledevicemanagementauthority.md)|Int32|Set mobile device management authority|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|mobileDeviceManagementAuthority|[mdmAuthority](../resources/intune-onboarding-mdmauthority.md)|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|
|certificateConnectorSetting|[certificateConnectorSetting](../resources/intune-onboarding-certificateconnectorsetting.md)|Certificate connector setting.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "mobileDeviceManagementAuthority": "String",
  "certificateConnectorSetting": {
    "@odata.type": "microsoft.graph.certificateConnectorSetting",
    "status": 1024,
    "certExpiryTime": "String (timestamp)",
    "enrollmentError": "String",
    "lastConnectorConnectionTime": "String (timestamp)",
    "connectorVersion": "String",
    "lastUploadVersion": 1024
  }
}
```