---
title: "List attendanceRecords"
description: "Get a list of attendanceRecord objects and their properties."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List attendanceRecords
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.

> [!TIP]
> A more convenient way to retrieve attendance records is to get them in line with an attendance report by using the `expand` query option. For an example and more details, see [Get attendance report](meetingattendancereport-get.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetingArtifact.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetingArtifact.Read.All |

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

To get attendance records of an attendance report with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- {"blockType": "ignored"}-->
``` http
GET /me/onlineMeetings/{meetingId}/attendanceReports/{reportId}/attendanceRecords
GET /users/{userId}/onlineMeetings/{meetingId}/attendanceReports/{reportId}/attendanceRecords
```

>- `userId` is the object ID of a user in [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).
>- `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.
>- `reportId` is the **id** of an [meetingAttendanceReport](../resources/meetingAttendanceReport.md) object.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [attendanceRecord](../resources/attendancerecord.md) objects in the response body.

## Examples

### Example 1: List attendance records
#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_attendancerecord"
}
-->

``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/{meetingId}/attendanceReports/{reportId}/attendanceRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-attendancerecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-attendancerecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-attendancerecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-attendancerecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-attendancerecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-attendancerecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attendanceRecord)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "emailAddress": "frederick.cormier@contoso.com",
      "totalAttendanceInSeconds": 322,
      "role": "Organizer",
      "registrantId": null,
      "identity": {
        "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4623",
        "displayName": "Frederick Cormier",
        "tenantId": null
      },
      "attendanceIntervals": [
        {
          "joinDateTime": "2021-10-05T04:38:27.6027225Z",
          "leaveDateTime": "2021-10-05T04:43:49.7702391Z",
          "durationInSeconds": 322
        }
      ]
    },
    {
      "emailAddress": "lisa.adkins@contoso.com",
      "totalAttendanceInSeconds": 314,
      "role": "Presenter",
      "registrantId": null,
      "identity": {
        "id": "57caaef9-5ed0-48d5-8862-e5abfa71b3e9",
        "displayName": "Lisa Adkins",
        "tenantId": null
      },
      "attendanceIntervals": [
        {
          "joinDateTime": "2021-10-04T23:13:43.3776519Z",
          "leaveDateTime": "2021-10-04T23:18:57.5639338Z",
          "durationInSeconds": 314
        }
      ]
    }
  ]
}
```

### Example 2: List attendance records containing Azure Communication Services users

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_attendancerecord_acsUser"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/{meetingId}/attendanceReports/{reportId}/attendanceRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-attendancerecord-acsuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-attendancerecord-acsuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-attendancerecord-acsuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-attendancerecord-acsuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-attendancerecord-acsuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-attendancerecord-acsuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attendanceRecord)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
      {
        "id": "00000012-518d-e776-71d3-44482200c7c4",
        "emailAddress": "",
        "totalAttendanceInSeconds": 274,
        "role": "Presenter",
        "registrantId": null,
        "identity": {
            "@odata.type": "#microsoft.graph.azureCommunicationServicesUserIdentity",
            "id": "8:acs:0c6204c3-70b6-4981-9f2c-5194ced1cdd1_00000012-518d-e776-71d3-44482200c7c3",
            "displayName": "Misty Croft",
            "azureCommunicationServicesResourceId": "0c6204c3-70b6-4981-9f2c-5194ced1cdd1"
        },
        "attendanceIntervals": [
            {
                "joinDateTime": "2022-06-29T22:54:43.656285Z",
                "leaveDateTime": "2022-06-29T22:59:18.5180137Z",
                "durationInSeconds": 274
            }
        ]
      },
      {
          "id": "57caaef9-5ed0-48d5-8862-e5abfa71b3e7",
          "emailAddress": "RayBonilla@contoso.com",
          "totalAttendanceInSeconds": 209,
          "role": "Presenter",
          "registrantId": null,
          "identity": {
              "@odata.type": "#microsoft.graph.communicationsUserIdentity",
              "id": "57caaef9-5ed0-48d5-8862-e5abfa71b3e7",
              "displayName": "Raymond  Bonilla",
              "tenantId": "160eec3a-e45f-488b-b127-3dd106c48843"
          },
          "attendanceIntervals": [
              {
                  "joinDateTime": "2022-06-29T22:55:49.1084865Z",
                  "leaveDateTime": "2022-06-29T22:59:18.5180137Z",
                  "durationInSeconds": 209
              }
          ]
      }
  ]
}
```
