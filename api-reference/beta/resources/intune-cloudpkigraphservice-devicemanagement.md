---
title: "deviceManagement resource type"
description: "Singleton that acts as container for a collection of Cloud PKI entities."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton that acts as container for a collection of Cloud PKI entities.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-cloudpkigraphservice-devicemanagement-get.md)|[deviceManagement](../resources/intune-cloudpkigraphservice-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-cloudpkigraphservice-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-cloudpkigraphservice-devicemanagement-update.md)|[deviceManagement](../resources/intune-cloudpkigraphservice-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-cloudpkigraphservice-devicemanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required Graph property|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cloudCertificationAuthority|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) collection|Collection of CloudCertificationAuthority records associated with account.|
|cloudCertificationAuthorityLeafCertificate|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) collection|Collection of CloudCertificationAuthorityLeafCertificate records associated with account.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```
