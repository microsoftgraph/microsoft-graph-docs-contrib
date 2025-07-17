---
title: "androidDeviceOwnerSilentCertificateAccess resource type"
description: "Contain the package ID that has the pre-granted access to the certificate."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerSilentCertificateAccess resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contain the package ID that has the pre-granted access to the certificate.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|packageId|String|Package ID that has the pre-granted access to the certificate.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerSilentCertificateAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerSilentCertificateAccess",
  "packageId": "String"
}
```