---
title: "dataSharingConsent resource type"
description: "Data sharing consent information."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# dataSharingConsent resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Data sharing consent information.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List dataSharingConsents](../api/intune-devices-datasharingconsent-list.md)|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md) collection|List properties and relationships of the [dataSharingConsent](../resources/intune-devices-datasharingconsent.md) objects.|
|[Get dataSharingConsent](../api/intune-devices-datasharingconsent-get.md)|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md)|Read properties and relationships of the [dataSharingConsent](../resources/intune-devices-datasharingconsent.md) object.|
|[Create dataSharingConsent](../api/intune-devices-datasharingconsent-create.md)|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md)|Create a new [dataSharingConsent](../resources/intune-devices-datasharingconsent.md) object.|
|[Delete dataSharingConsent](../api/intune-devices-datasharingconsent-delete.md)|None|Deletes a [dataSharingConsent](../resources/intune-devices-datasharingconsent.md).|
|[Update dataSharingConsent](../api/intune-devices-datasharingconsent-update.md)|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md)|Update the properties of a [dataSharingConsent](../resources/intune-devices-datasharingconsent.md) object.|
|[consentToDataSharing action](../api/intune-devices-datasharingconsent-consenttodatasharing.md)|[dataSharingConsent](../resources/intune-devices-datasharingconsent.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The data sharing consent Id|
|serviceDisplayName|String|The display name of the service work flow|
|termsUrl|String|The TermsUrl for the data sharing consent|
|granted|Boolean|The granted state for the data sharing consent|
|grantDateTime|DateTimeOffset|The time consent was granted for this account|
|grantedByUpn|String|The Upn of the user that granted consent for this account|
|grantedByUserId|String|The UserId of the user that granted consent for this account|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataSharingConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSharingConsent",
  "id": "String (identifier)",
  "serviceDisplayName": "String",
  "termsUrl": "String",
  "granted": true,
  "grantDateTime": "String (timestamp)",
  "grantedByUpn": "String",
  "grantedByUserId": "String"
}
```