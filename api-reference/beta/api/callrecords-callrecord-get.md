---
title: "Get callRecord"
description: "Retrieve the properties and relationships of callrecord object."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "apiPageType"
---

# Get callRecord

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [callRecord](../resources/callrecords-callrecord.md) object.

There are two ways to get the **id** of a **callRecord**:

* Subscribe to [change notifications](/graph/api/resources/webhooks) to the `/communications/callRecords` endpoint.
* Use the **callChainId** property of a [call](../resources/call.md). The call record is available only after the associated call is completed.

> [!WARNING]
>
> A call record is created after a call or meeting ends and remains available for **30 days**. Requests for call records older than 30 days receive a `404 Not Found` response.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords/{id}
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name      |Description|
|:----------|:----------|
| $select | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources. Only supported for `callRecord` and `session` resources. |
| $expand | Use the `$expand` query parameter to include the expanded resource or collection referenced by a single relationship (**participants_v2** or **sessions** and **segments**) in your results. For an exmaple, see [Get session and segment details](#example-2-get-session-and-segment-details). |

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: odata.maxpagesize={x} | Specifies a preferred integer {x} page size for paginated results. Optional. This value must be equal to or less than the maximum allowable page size. |
| Prefer: include-unknown-enum-members | Enables evolvable enum values beyond the sentinel value. For more information, see [Best practices for working with Microsoft Graph](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Optional. |
| Prefer: omit-values=nulls | Removes null or empty values from the response. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.callRecords.callRecord](../resources/callrecords-callrecord.md) object in the response body. A request for a call record older than 30 days receive a `404 Not Found` response.

When a result set spans multiple pages, Microsoft Graph returns that page with an **@odata.nextLink** property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging). Maximum page size: 130 entries for participants and 60 entries for sessions.

## Examples

### Example 1: Get basic details

The following example shows how to get the basic details from a [callRecord](../resources/callrecords-callrecord.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecord-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecord-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.callRecord"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords/$entity",
  "version": 1,
  "type": "peerToPeer",
  "modalities": [
    "audio"
  ],
  "lastModifiedDateTime": "2020-02-25T19:00:24.582757Z",
  "startDateTime": "2020-02-25T18:52:21.2169889Z",
  "endDateTime": "2020-02-25T18:52:46.7640013Z",
  "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
  "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/organizer_v2/$entity",
  "organizer_v2": {
    "id": "821809f5-0000-0000-0000-3b5136c0e777",
    "identity": {
      "user": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "displayName": "Abbie Wilkins",
        "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
      }
    }
  },
  "participants_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/participants_v2/$entity"
}
```

### Example 2: Get session and segment details

The following example shows how to get the full session and segment details from a [callRecord](../resources/callrecords-callrecord.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_expanded_sessions_and_segments"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5?$expand=sessions($expand=segments)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecord-expanded-sessions-and-segments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecord-expanded-sessions-and-segments-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecord-expanded-sessions-and-segments-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecord-expanded-sessions-and-segments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecord-expanded-sessions-and-segments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecord-expanded-sessions-and-segments-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecord-expanded-sessions-and-segments-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecord-expanded-sessions-and-segments-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.callRecord"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords(sessions(segments()))/$entity",
  "version": 1,
  "type": "peerToPeer",
  "modalities": [
    "audio"
  ],
  "lastModifiedDateTime": "2020-02-25T19:00:24.582757Z",
  "startDateTime": "2020-02-25T18:52:21.2169889Z",
  "endDateTime": "2020-02-25T18:52:46.7640013Z",
  "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
  "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/organizer_v2/$entity",
  "organizer_v2": {
    "id": "821809f5-0000-0000-0000-3b5136c0e777",
    "identity": {
      "user": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "displayName": "Abbie Wilkins",
        "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
      }
    }
  },
  "participants_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/participants_v2/$entity",
  "sessions": [
    {
      "modalities": [
        "audio"
      ],
      "startDateTime": "2020-02-25T18:52:21.2169889Z",
      "endDateTime": "2020-02-25T18:52:46.7640013Z",
      "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
      "isTest": false,
      "caller": {
        "@odata.type": "#microsoft.graph.callRecords.participantEndpoint",
        "name": "machineName_2",
        "userAgent": {
          "@odata.type": "#microsoft.graph.callRecords.clientUserAgent",
          "headerValue": "RTCC/7.0.0.0 UCWA/7.0.0.0 AndroidLync/6.25.0.27 (SM-G930U Android 8.0.0)",
          "platform": "android",
          "productFamily": "skypeForBusiness"
        },
        "associatedIdentity": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "abbie.wilkins@contoso.com"
        }
      },
      "callee": {
        "@odata.type": "#microsoft.graph.callRecords.participantEndpoint",
        "name": "machineName_4",
        "userAgent": {
          "@odata.type": "#microsoft.graph.callRecords.clientUserAgent",
          "headerValue": "UCCAPI/16.0.12527.20122 OC/16.0.12527.20194 (Skype for Business)",
          "platform": "windows",
          "productFamily": "skypeForBusiness"
        },
        "associatedIdentity": {
          "id": "f69e2c00-0000-0000-0000-185e5f5f5d8a",
          "displayName": "Owen Franklin",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "owen.franklin@contoso.com"
        },
        "feedback": {
          "rating": "poor"
        }
      },
      "segments": [
        {
          "startDateTime": "2020-02-25T18:52:21.2169889Z",
          "endDateTime": "2020-02-25T18:52:46.7640013Z",
          "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
          "media": [
            {
              "label": "main-audio",
              "callerNetwork": {
                "ipAddress": "10.150.0.2",
                "subnet": "10.150.0.0",
                "linkSpeed": 54000000
              },
              "callerDevice": {
                "captureDeviceName": "Default input device",
                "renderDeviceName": "Default output device",
                "receivedSignalLevel": -10
              },
              "streams": [
                {
                  "streamId": "1504545584",
                  "streamDirection": "callerToCallee",
                  "averageAudioDegradation": null,
                  "averageJitter": "PT0.016S"
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "sessions@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/sessions?$expand=segments&$skiptoken=abc"
}
```

### Example 3: Get participant details

The following example shows how to expand the full paginated participant list for a [callRecord](../resources/callrecords-callrecord.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_expanded_participants_v2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5?$expand=participants_v2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecord-expanded-participants-v2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecord-expanded-participants-v2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecord-expanded-participants-v2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecord-expanded-participants-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecord-expanded-participants-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecord-expanded-participants-v2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecord-expanded-participants-v2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecord-expanded-participants-v2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.callRecord"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords(participants_v2())/$entity",
  "version": 1,
  "type": "peerToPeer",
  "modalities": [
    "audio"
  ],
  "lastModifiedDateTime": "2020-02-25T19:00:24.582757Z",
  "startDateTime": "2020-02-25T18:52:21.2169889Z",
  "endDateTime": "2020-02-25T18:52:46.7640013Z",
  "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
  "organizer_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/organizer_v2/$entity",
  "organizer_v2": {
    "id": "821809f5-0000-0000-0000-3b5136c0e777",
    "identity": {
      "user": {
        "id": "821809f5-0000-0000-0000-3b5136c0e777",
        "displayName": "Abbie Wilkins",
        "tenantId": "dc368399-474c-4d40-900c-6265431fd81f"
      }
    }
  },
  "participants_v2@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/participants_v2/$entity",
  "participants_v2@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/participants_v2?$skiptoken=abc",
  "participants_v2": [
    {
      "id": "821809f5-0000-0000-0000-3b5136c0e777",
      "identity": {
        "user": {
          "id": "821809f5-0000-0000-0000-3b5136c0e777",
          "displayName": "Abbie Wilkins",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "abbie.wilkins@contoso.com"
        }
      }
    },
    {
      "id": "821809f5-0000-0000-0000-3b5136c0e777",
      "identity": {
        "user": {
          "id": "f69e2c00-0000-0000-0000-185e5f5f5d8a",
          "displayName": "Owen Franklin",
          "tenantId": "dc368399-474c-4d40-900c-6265431fd81f",
          "userPrincipalName": "owen.franklin@contoso.com"
        }
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Get callRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


