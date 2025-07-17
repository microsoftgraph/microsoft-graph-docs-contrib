---
title: "managedAppRegistration resource type"
description: "The ManagedAppEntity is the base entity type for all other entity types under app management workflow. The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedAppRegistration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ManagedAppEntity is the base entity type for all other entity types under app management workflow.
The ManagedAppRegistration resource represents the details of an app, with management capability, used by a member of the organization.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedAppRegistrations](../api/intune-mam-managedappregistration-list.md)|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|List properties and relationships of the [managedAppRegistration](../resources/intune-mam-managedappregistration.md) objects.|
|[Get managedAppRegistration](../api/intune-mam-managedappregistration-get.md)|[managedAppRegistration](../resources/intune-mam-managedappregistration.md)|Read properties and relationships of the [managedAppRegistration](../resources/intune-mam-managedappregistration.md) object.|
|[getUserIdsWithFlaggedAppRegistration function](../api/intune-mam-managedappregistration-getuseridswithflaggedappregistration.md)|String collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of creation|
|lastSyncDateTime|DateTimeOffset|Date and time of last the app synced with management service.|
|applicationVersion|String|App version|
|managementSdkVersion|String|App management SDK version|
|platformVersion|String|Operating System version|
|deviceType|String|Host device type|
|deviceTag|String|App management SDK generated tag, which helps relate apps hosted on the same device. Not guaranteed to relate apps in all conditions.|
|deviceName|String|Host device name|
|managedDeviceId|String|The Managed Device identifier of the host device. Value could be empty even when the host device is managed.|
|azureADDeviceId|String|The Azure Active Directory Device identifier of the host device. Value could be empty even when the host device is Azure Active Directory registered.|
|deviceModel|String|The device model for the current app registration |
|deviceManufacturer|String|The device manufacturer for the current app registration |
|flaggedReasons|[managedAppFlaggedReason](../resources/intune-mam-managedappflaggedreason.md) collection|Zero or more reasons an app registration is flagged. E.g. app running on rooted device|
|userId|String|The user Id to who this app registration belongs.|
|appIdentifier|[mobileAppIdentifier](../resources/intune-mam-mobileappidentifier.md)|The app package Identifier|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliedPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Zero or more policys already applied on the registered app when it last synchronized with managment service.|
|intendedPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Zero or more policies admin intended for the app as of now.|
|managedAppLogCollectionRequests|[managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) collection|Zero or more log collection requests triggered for the app.|
|operations|[managedAppOperation](../resources/intune-mam-managedappoperation.md) collection|Zero or more long running operations triggered on the app registration.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedAppRegistration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedAppRegistration",
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
    "@odata.type": "microsoft.graph.windowsAppIdentifier",
    "windowsAppId": "String"
  },
  "id": "String (identifier)",
  "version": "String"
}
```