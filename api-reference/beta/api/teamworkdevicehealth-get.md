---
title: "Get teamworkDeviceHealth"
description: "Get the health details of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Get teamworkDeviceHealth
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [health](../resources/teamworkdevicehealth.md) details of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md). Device health is calculated based on the device configuration and other device parameters.

[!INCLUDE [teamworkdevice-api-disclaimer](../../includes/teamworkdevice-api-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkDevice.Read.All, TeamworkDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/devices/{teamworkDeviceId}/health
```

## Optional query parameters
This operation supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkDeviceHealth](../resources/teamworkdevicehealth.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_teamworkdevicehealth"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/devices/d8214fe3-4fe3-d821-e34f-21d8e34f21d8/health
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-teamworkdevicehealth-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-teamworkdevicehealth-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-teamworkdevicehealth-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-teamworkdevicehealth-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-teamworkdevicehealth-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-teamworkdevicehealth-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceHealth"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamworkDeviceHealth",
    "id": "d8214fe3-4fe3-d821-e34f-21d8e34f21d8",
    "connection": {
      "connectionStatus": "disconnected",
      "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
    },
    "loginStatus": {
      "exchangeConnection": {
        "connectionStatus": "connected",
        "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
      },
      "teamsConnection": {
        "connectionStatus": "connected",
        "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
      },
      "skypeConnection": {
        "connectionStatus": "connected",
        "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
      }
    },
    "peripheralsHealth": {
      "roomCameraHealth": {
        "isOptional": false,
        "connection": {
          "connectionStatus": "disconnected",
          "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      },
      "contentCameraHealth": {
        "isOptional": true,
        "connection": {
          "connectionStatus": "unknown",
          "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      },
      "speakerHealth": {
        "isOptional": false,
        "connection": {
          "connectionStatus": "connected",
          "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      },
      "communicationSpeakerHealth": {
        "isOptional": false,
        "connection": {
          "connectionStatus": "connected",
          "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      },
      "displayHealthCollection": [
          {
            "isOptional": false,
            "connection": {
              "connectionStatus": "disconnected",
              "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
            }
          },
          {
            "isOptional": true,
            "connection": {
              "connectionStatus": "disconnected",
              "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
            }
          }
      ],
      "microphoneHealth": {
        "isOptional": false,
        "connection": {
          "connectionStatus": "connected",
          "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      }
    },
    "softwareUpdateHealth": {
      "companyPortalSoftwareUpdateStatus": null,
      "firmwareSoftwareUpdateStatus": null,
      "partnerAgentSoftwareUpdateStatus": null,
      "adminAgentSoftwareUpdateStatus": {
          "softwareFreshness": "latest",
          "currentVersion": "2021.4.4.8",
          "availableVersion": null
      },
      "teamsClientSoftwareUpdateStatus": null,
      "operatingSystemSoftwareUpdateStatus": null
    },
    "hardwareHealth": {
      "computeHealth": {
        "isOptional": false,
        "connection": {
            "connectionStatus": "connected",
            "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      },
      "hdmiIngestHealth": {
        "isOptional": false,
        "connection": {
            "connectionStatus": "connected",
            "lastModifiedDateTime": "2021-06-10T19:01:04.185Z"
        }
      }
    },
    "createdDateTime": "2021-03-19T19:00:04.000Z",
    "lastModifiedDateTime": "2021-06-19T19:01:04.185Z",
    "createdBy": null,
    "lastModifiedBy": null
  }
}
```

