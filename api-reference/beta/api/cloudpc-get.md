---
title: "Get cloudPC"
description: "Read the properties and relationships of a specific cloudPC object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPC

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a specific [cloudPC](../resources/cloudpc.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get the [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

``` http
GET /me/cloudPCs/{id}
GET /users/{userId}/cloudPCs/{id}
```

To get the specified [cloudPC](../resources/cloudpc.md) in the organization, using either delegated permission (the signed-in user should be the administrator) or application permission:

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPC](../resources/cloudpc.md) object in the response body.

## Examples

### Example 1: Get the default properties of a Cloud PC

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpc_default_properties"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/9ec90ff8-fd63-4fb9-ab5a-aa4fdcc43ec9
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpc-default-properties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpc-default-properties-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpc-default-properties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpc-default-properties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpc-default-properties-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpc-default-properties-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_cloudpc_default_properties",
  "@odata.type": "microsoft.graph.cloudPC"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPC",
    "aadDeviceId": "f5ff445f-7488-40f8-8ab9-ee784a9c1f33",
    "id": "ac74ae8b-85f7-4272-88cc-54192674ffff",
    "displayName": "Demo-0",
    "imageDisplayName": "Windows-10 19h1-evd",
    "managedDeviceId": "e87f50c7-fa7f-4687-aade-dd45f3d6ffff",
    "managedDeviceName": "A00002GI001",
    "provisioningPolicyId": "13fa0778-ba00-438a-96d3-488c8602ffff",
    "provisioningPolicyName": "Marketing provisioning policy",
    "onPremisesConnectionName": "Azure network connection for Marketing",
    "servicePlanId": "da5615b4-a484-4742-a019-2d52c91cffff",
    "servicePlanName": "standard",
    "servicePlanType": "enterprise",
    "status": "failed",
    "statusDetails": {
    "@odata.type": "microsoft.graph.cloudPcStatusDetails",
    "code": "internalServerError",
    "message": "There was an internal server error. Please contact support xxx.",
    "additionalInformation": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "correlationId",
          "value": "52367774-cfb7-4e9c-ab51-1b864c31f2d1"
        }
      ]
    },
    "userPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
    "lastModifiedDateTime": "2020-11-03T18:14:34Z",
    "gracePeriodEndDateTime": "2020-11-010T20:00:34Z",
    "provisioningType": "shared",
    "diskEncryptionState": "notAvailable"
}
```

### Example 2: Get the selected properties of a Cloud PC

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpc_selected_properties"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/40cee9d2-03fb-4066-8d35-dbdf2875c33f?$select=id,displayName,imageDisplayName,lastModifiedDateTime,lastRemoteActionResult,lastLoginResult,connectivityResult
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpc-selected-properties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpc-selected-properties-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpc-selected-properties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpc-selected-properties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpc-selected-properties-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpc-selected-properties-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_cloudpc_selected_properties",
  "@odata.type": "microsoft.graph.cloudPC"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPC",
    "id": "ac74ae8b-85f7-4272-88cc-54192674ffff",
    "displayName": "Demo-0",
    "imageDisplayName": "Windows-10 19h1-evd",
    "lastModifiedDateTime": "2020-11-03T18:14:34Z",
    "lastLoginResult": {
        "time": "2021-06-23T09:28:32.8260335Z"
    },
    "lastRemoteActionResult": {
      "actionName": "Reboot",
      "actionState": "done",
      "startDateTime": "2021-06-23T09:28:32.8260335Z",
      "lastUpdatedDateTime": "2021-06-23T09:28:32.8260338Z",
      "cloudPcId": "662009bc-7732-4f6f-8726-25883518b33e",
      "managedDeviceId": "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
      "statusDetails": null
    },
    "connectivityResult": {
      "status": "unavailable",
      "updatedDatetime": "2022-03-22T10:28:32.8260335Z",
      "failedHealthCheckItems": [
        {
          "displayName": "DomainJoinCheck",
          "result": "failure",
          "lastHealthCheckDateTime": "2022-03-22T10:28:32.8260335Z",
          "additionalDetails": "SessionHost unhealthy: SessionHost is not joined to a domain"
        }
      ]
    }
}
```

### Exmaple 3: Get the default properties of a Cloud PC of the signed-in user

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_get_cloudpc_default_properties"
}
-->

``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/36bd4942-0ca8-11ed-861d-0242ac120002
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-get-cloudpc-default-properties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-get-cloudpc-default-properties-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-get-cloudpc-default-properties-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-get-cloudpc-default-properties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-get-cloudpc-default-properties-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "user_get_cloudpc_default_properties",
  "@odata.type": "microsoft.graph.cloudPC"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPC",
    "aadDeviceId": "61204a22-0ca8-11ed-861d-0242ac120002",
    "id": "36bd4942-0ca8-11ed-861d-0242ac120002",
    "displayName": "Demo-1",
    "imageDisplayName": "Windows-10 19h1-evd",
    "managedDeviceId": "70341bb0-0ca8-11ed-861d-0242ac120002",
    "managedDeviceName": "A00002GI001",
    "provisioningPolicyId": "7a3bdee0-0ca8-11ed-861d-0242ac120002",
    "provisioningPolicyName": "Marketing provisioning policy",
    "onPremisesConnectionName": "Azure network connection for Marketing",
    "servicePlanId": "83fca22a-0ca8-11ed-861d-0242ac120002",
    "servicePlanName": "standard",
    "servicePlanType": "enterprise",
    "status": "failed",
    "statusDetails": {
    "@odata.type": "microsoft.graph.cloudPcStatusDetails",
    "code": "internalServerError",
    "message": "There was an internal server error. Please contact support xxx.",
    "additionalInformation": [
        {
          "@odata.type": "microsoft.graph.keyValuePair",
          "name": "correlationId",
          "value": "8fea34e4-0ca8-11ed-861d-0242ac120002"
        }
      ]
    },
    "userPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
    "lastModifiedDateTime": "2020-11-03T18:14:34Z",
    "gracePeriodEndDateTime": "2020-11-010T20:00:34Z",
    "provisioningType": "shared",
    "diskEncryptionState": "notAvailable"
}
```
