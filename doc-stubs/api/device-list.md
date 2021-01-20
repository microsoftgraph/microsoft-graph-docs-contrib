---
title: "List devices"
description: "Get a list of the device objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List devices
Namespace: microsoft.graph

Get a list of the [device](../resources/device.md) objects and their properties.

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
GET /devices
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [device](../resources/device.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_device"
}
-->
``` http
GET https://graph.microsoft.com/beta/devices
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.device)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

