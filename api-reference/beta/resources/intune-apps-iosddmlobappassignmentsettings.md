---
title: "iosDdmLobAppAssignmentSettings resource type"
description: "Contains properties used to assign an iOS iOS Declarative Device Management (DDM) Line Of Business (LOB) mobile app to a group."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosDdmLobAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an iOS iOS Declarative Device Management (DDM) Line Of Business (LOB) mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedDomains|String collection|Domain names to associate with the app|
|associatedDomainsDirectDownloadAllowed|Boolean|When true, the system allows direct downloads for the AssociatedDomains. When false, the system will not allow direct downloads for the AssociatedDomains. Default is false.|
|preventManagedAppBackup|Boolean|When true, indicates that the app should not be backed up to iCloud. When false, indicates that the app may be backed up to iCloud. Default is false.|
|tapToPayScreenLockEnabled|Boolean|When true, the device locks its screen after every transaction that requires a customer’s card PIN. When false, the user can choose the behavior. Default value is false.|
|vpnConfigurationId|String|The unique identifier of the relay to associate with the app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosDdmLobAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosDdmLobAppAssignmentSettings",
  "associatedDomains": [
    "String"
  ],
  "associatedDomainsDirectDownloadAllowed": true,
  "preventManagedAppBackup": true,
  "tapToPayScreenLockEnabled": true,
  "vpnConfigurationId": "String"
}
```