---
title: "List sessions"
description: "Retrieve the list of session objects for a callRecord."
ms.localizationpriority: medium
author: "mcm223"
ms.prod: "cloud-communications"
doc_type: "apiPageType"
---

# List sessions

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [sessions](../resources/callrecords-session.md) associated with a [callRecord](../resources/callrecords-callrecord.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callrecords_callrecord_list_sessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/callrecords-callrecord-list-sessions-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords/{id}/sessions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name      |Description|
|:----------|:----------|
| $select | Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources.  Only supported for `callRecord` and `session` resources. |
| $expand | Use the `$expand` query parameter to include the expanded resource or collection referenced by a single relationship in your results. |

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

If successful, this method returns a `200 OK` response code and a collection of [session](../resources/callrecords-session.md) objects in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an **@odata.nextLink** property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the **@odata.nextLink** URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging). The maximum page size for sessions is 60 entries.

## Examples

### Example 1: Get session list

The following example shows a request to get the list of [sessions](../resources/callrecords-session.md) for a [callRecord](../resources/callrecords-callrecord.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_sessions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5/sessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecord-sessions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecord-sessions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecord-sessions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecord-sessions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecord-sessions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecord-sessions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecord-sessions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecord-sessions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecords.session)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/sessions",
    "value": [
        {
            "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
            "modalities": [
                "audio"
            ],
            "startDateTime": "2020-02-25T18:52:21.2169889Z",
            "endDateTime": "2020-02-25T18:52:46.7640013Z",
            "isTest": false,
            "caller": {
                "@odata.type": "#microsoft.graph.callRecords.participantEndpoint",
                "name": "machineName_1",
                "cpuName": "AMD EPYC 7452 32-Core Processor",
                "cpuCoresCount": 8,
                "cpuProcessorSpeedInMhz": 2346,
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
                "name": "machineName_2",
                "cpuName": "Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz",
                "cpuCoresCount": 2,
                "cpuProcessorSpeedInMhz": 2594,
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
                    "rating": "poor",
                    "tokens": {
                        "NoSound": false,
                        "OtherNoSound": false,
                        "Echo": false,
                        "Noisy": true,
                        "LowVolume": false,
                        "Stopped": false,
                        "DistortedSound": false,
                        "Interruptions": false
                    }
                }
            }
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/sessions?$skiptoken=abc"
}
```

### Example 2: Get session list with segments

The following example shows a request to get the list of [sessions](../resources/callrecords-session.md) for a [callRecord](../resources/callrecords-callrecord.md) with [segments](../resources/callrecords-segment.md) included.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callrecord_sessions_expanded"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/callRecords/e523d2ed-2966-4b6b-925b-754a88034cc5/sessions?$expand=segments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecord-sessions-expanded-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-callrecord-sessions-expanded-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecord-sessions-expanded-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecord-sessions-expanded-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecord-sessions-expanded-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecord-sessions-expanded-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-callrecord-sessions-expanded-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecord-sessions-expanded-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.session",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/sessions",
    "value": [
        {
            "id": "e523d2ed-2966-4b6b-925b-754a88034cc5",
            "modalities": [
                "audio"
            ],
            "startDateTime": "2020-02-25T18:52:21.2169889Z",
            "endDateTime": "2020-02-25T18:52:46.7640013Z",
            "isTest": false,
            "caller": {
                "@odata.type": "#microsoft.graph.callRecords.participantEndpoint",
                "name": "machineName_1",
                "cpuName": "AMD EPYC 7452 32-Core Processor",
                "cpuCoresCount": 8,
                "cpuProcessorSpeedInMhz": 2346,
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
                "name": "machineName_2",
                "cpuName": "Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz",
                "cpuCoresCount": 2,
                "cpuProcessorSpeedInMhz": 2594,
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
                    "rating": "poor",
                    "tokens": {
                        "NoSound": false,
                        "OtherNoSound": false,
                        "Echo": false
                    }
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
                            "calleeNetwork": {
                                "ipAddress": "10.139.0.12",
                                "subnet": "10.139.80.0",
                                "linkSpeed": 4294967295
                            },
                            "callerDevice": {
                                "captureDeviceName": "Default input device",
                                "renderDeviceName": "Default output device",
                                "receivedSignalLevel": -10
                            },
                            "calleeDevice": {
                                "captureDeviceName": "Microphone (Microsoft Virtual Audio Device (Simple) (WDM))",
                                "captureDeviceDriver": "Microsoft: 5.0.8638.1100",
                                "renderDeviceName": "Speakers (Microsoft Virtual Audio Device (Simple) (WDM))"
                            },
                            "streams": [
                                {
                                    "streamId": "1504545584",
                                    "streamDirection": "callerToCallee",
                                    "averageAudioDegradation": null
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/$metadata#communications/callRecords('e523d2ed-2966-4b6b-925b-754a88034cc5')/sessions?$expand=segments&$skiptoken=abc"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List sessions",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


