---
title: "androidDeviceOwnerSilentCertificateAccess resource type"
description: "Contain the package ID that has the pre-granted access to the certificate."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidDeviceOwnerSilentCertificateAccess resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
