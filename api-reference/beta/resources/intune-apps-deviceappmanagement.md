---
title: "deviceAppManagement resource type"
description: "Singleton entity that acts as a container for all device app management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAppManagement resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device app management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune-apps-deviceappmanagement-get.md)|[deviceAppManagement](../resources/intune-apps-deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune-apps-deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune-apps-deviceappmanagement-update.md)|[deviceAppManagement](../resources/intune-apps-deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune-apps-deviceappmanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mobileApps|[mobileApp](../resources/intune-apps-mobileapp.md) collection|The mobile apps.|
|mobileAppCategories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The mobile app categories.|
|enterpriseCodeSigningCertificates|[enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md) collection|The Windows Enterprise Code Signing Certificate.|
|iosLobAppProvisioningConfigurations|[iosLobAppProvisioningConfiguration](../resources/intune-apps-ioslobappprovisioningconfiguration.md) collection|The IOS Lob App Provisioning Configurations.|
|symantecCodeSigningCertificate|[symantecCodeSigningCertificate](../resources/intune-apps-symanteccodesigningcertificate.md)|The WinPhone Symantec Code Signing Certificate.|
|mobileAppConfigurations|[managedDeviceMobileAppConfiguration](../resources/intune-apps-manageddevicemobileappconfiguration.md) collection|The Managed Device Mobile Application Configurations.|
|mobileAppCatalogPackages|[mobileAppCatalogPackage](../resources/intune-apps-mobileappcatalogpackage.md) collection|MobileAppCatalogPackage entities.|
|mobileAppRelationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|List mobileAppRelationship objects for mobile applications.|

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
