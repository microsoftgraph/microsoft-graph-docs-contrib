---
title: "iosManagedAppRegistration resource type"
description: "Represents the synchronization details of an ios app, with management capabilities, for a specific user. The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosManagedAppRegistration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the synchronization details of an ios app, with management capabilities, for a specific user.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.


Inherits from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosManagedAppRegistrations](../api/intune-mam-iosmanagedappregistration-list.md)|[iosManagedAppRegistration](../resources/intune-mam-iosmanagedappregistration.md) collection|List properties and relationships of the [iosManagedAppRegistration](../resources/intune-mam-iosmanagedappregistration.md) objects.|
|[Get iosManagedAppRegistration](../api/intune-mam-iosmanagedappregistration-get.md)|[iosManagedAppRegistration](../resources/intune-mam-iosmanagedappregistration.md)|Read properties and relationships of the [iosManagedAppRegistration](../resources/intune-mam-iosmanagedappregistration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of creation Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|applicationVersion|String|App version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|managementSdkVersion|String|App management SDK version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|platformVersion|String|Operating System version Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceType|String|Host device type Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceName|String|Host device name Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|managedDeviceId|String|The Managed Device identifier of the host device. Value could be empty even when the host device is managed. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|azureADDeviceId|String|The Azure Active Directory Device identifier of the host device. Value could be empty even when the host device is Azure Active Directory registered. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceModel|String|The device model for the current app registration  Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|deviceManufacturer|String|The device manufacturer for the current app registration  Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|flaggedReasons|[managedAppFlaggedReason](../resources/intune-mam-managedappflaggedreason.md) collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|userId|String|The user Id to who this app registration belongs. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|appIdentifier|[mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)|The app package Identifier Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|id|String|Key of the entity. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|version|String|Version of the entity. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliedPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|intendedPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Zero or more policies admin intended for the app as of now. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|managedAppLogCollectionRequests|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) collection|Zero or more log collection requests triggered for the app. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|
|operations|[managedAppOperation](../resources/intune-mam-managedappoperation.md) collection|Zero or more long running operations triggered on the app registration. Inherited from [managedAppRegistration](../resources/intune-mam-managedappregistration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosManagedAppRegistration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosManagedAppRegistration",
  "createdDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)",
  "applicationVersion": "String",
  "managementSdkVersion": "String",
  "platformVersion": "String",
  "deviceType": "String",
  "deviceTag": "String",
  "deviceName": "String",
  "managedDeviceId": "String",
  "azureADDeviceId": "String",
  "deviceModel": "String",
  "deviceManufacturer": "String",
  "flaggedReasons": [
    "String"
  ],
  "userId": "String",
  "appIdentifier": {
    "@odata.type": "microsoft.graph.iosMobileAppIdentifier",
    "bundleId": "String"
  },
  "id": "String (identifier)",
  "version": "String"
}
```