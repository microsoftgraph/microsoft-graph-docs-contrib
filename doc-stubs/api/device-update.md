---
title: "Update device"
description: "Update the properties of a device object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update device
Namespace: microsoft.graph

Update the properties of a [device](../resources/device.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /devices/{devicesId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [device](../resources/device.md) object.

The following table shows the properties that are required when you update the [device](../resources/device.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|accountEnabled|Boolean|**TODO: Add Description**|
|alternativeSecurityIds|[alternativeSecurityId](../resources/alternativesecurityid.md) collection|**TODO: Add Description**|
|approximateLastSignInDateTime|DateTimeOffset|**TODO: Add Description**|
|complianceExpirationDateTime|DateTimeOffset|**TODO: Add Description**|
|deviceCategory|String|**TODO: Add Description**|
|deviceId|String|**TODO: Add Description**|
|deviceMetadata|String|**TODO: Add Description**|
|deviceOwnership|String|**TODO: Add Description**|
|deviceVersion|Int32|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|domainName|String|**TODO: Add Description**|
|enrollmentProfileName|String|**TODO: Add Description**|
|enrollmentType|String|**TODO: Add Description**|
|extensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|**TODO: Add Description**|
|isCompliant|Boolean|**TODO: Add Description**|
|isManaged|Boolean|**TODO: Add Description**|
|isRooted|Boolean|**TODO: Add Description**|
|managementType|String|**TODO: Add Description**|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|operatingSystem|String|**TODO: Add Description**|
|operatingSystemVersion|String|**TODO: Add Description**|
|hostnames|String collection|**TODO: Add Description**|
|physicalIds|String collection|**TODO: Add Description**|
|profileType|String|**TODO: Add Description**|
|registrationDateTime|DateTimeOffset|**TODO: Add Description**|
|systemLabels|String collection|**TODO: Add Description**|
|trustType|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|manufacturer|String|**TODO: Add Description**|
|model|String|**TODO: Add Description**|
|kind|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|
|platform|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [device](../resources/device.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_device"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/devices/{devicesId}
Content-Type: application/json
Content-length: 1369

{
  "@odata.type": "#microsoft.graph.device",
  "deletedDateTime": "String (timestamp)",
  "accountEnabled": "Boolean",
  "alternativeSecurityIds": [
    {
      "@odata.type": "microsoft.graph.alternativeSecurityId"
    }
  ],
  "approximateLastSignInDateTime": "String (timestamp)",
  "complianceExpirationDateTime": "String (timestamp)",
  "deviceCategory": "String",
  "deviceId": "String",
  "deviceMetadata": "String",
  "deviceOwnership": "String",
  "deviceVersion": "Integer",
  "displayName": "String",
  "domainName": "String",
  "enrollmentProfileName": "String",
  "enrollmentType": "String",
  "extensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "isCompliant": "Boolean",
  "isManaged": "Boolean",
  "isRooted": "Boolean",
  "managementType": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": "Boolean",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "hostnames": [
    "String"
  ],
  "physicalIds": [
    "String"
  ],
  "profileType": "String",
  "registrationDateTime": "String (timestamp)",
  "systemLabels": [
    "String"
  ],
  "trustType": "String",
  "name": "String",
  "manufacturer": "String",
  "model": "String",
  "kind": "String",
  "status": "String",
  "platform": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.device",
  "id": "32810a3e-0a3e-3281-3e0a-81323e0a8132",
  "deletedDateTime": "String (timestamp)",
  "accountEnabled": "Boolean",
  "alternativeSecurityIds": [
    {
      "@odata.type": "microsoft.graph.alternativeSecurityId"
    }
  ],
  "approximateLastSignInDateTime": "String (timestamp)",
  "complianceExpirationDateTime": "String (timestamp)",
  "deviceCategory": "String",
  "deviceId": "String",
  "deviceMetadata": "String",
  "deviceOwnership": "String",
  "deviceVersion": "Integer",
  "displayName": "String",
  "domainName": "String",
  "enrollmentProfileName": "String",
  "enrollmentType": "String",
  "extensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "isCompliant": "Boolean",
  "isManaged": "Boolean",
  "isRooted": "Boolean",
  "managementType": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": "Boolean",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "hostnames": [
    "String"
  ],
  "physicalIds": [
    "String"
  ],
  "profileType": "String",
  "registrationDateTime": "String (timestamp)",
  "systemLabels": [
    "String"
  ],
  "trustType": "String",
  "name": "String",
  "manufacturer": "String",
  "model": "String",
  "kind": "String",
  "status": "String",
  "platform": "String"
}
```

