---
title: "restorePoint: search"
description: "Search for the restorePoint objects associated with a protectionUnit."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 11/07/2024
---

# restorePoint: search

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Search for the [restorePoint](../resources/restorepoint.md) objects associated with a [protectionUnit](../resources/protectionunitbase.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "restorepoint_search" } -->
[!INCLUDE [permissions-table](../includes/permissions/restorepoint-search-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/restorePoints/search
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|artifactQuery|[artifactQuery](../resources/artifactquery.md)|Contains an expression that specifies the criteria for search. Optional.|
|protectionUnitIds|String collection|The ID of the protection units. Required.|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|The start and end date time of the protection period. Required.|
|restorePointPreference|[restorePointPreference](../api/restorepoint-search.md#restorepointpreference-values)|Indicates which restore point to return. The possible values are `oldest`, `latest`. Optional.|
|tags|[restorePointTags](../resources/restorepoint.md#restorepointtags-values)|The type of the restore point. The possible values are `None`, `FastRestore`, `UnknownFutureValue`. Optional.|

### restorePointPreference values

|Member | Description |
|:------|:------------|
|latest | Returns the latest restore point for a given protection time period.|
|oldest | Returns the oldest restore point for a given protection time period.|

## Response

If successful, this action returns a `200 OK` response code and a [restorePointSearchResponse](../resources/restorepointsearchresponse.md) object in the response body.

> [!NOTE]
> - Calls return a maximum of five restore points.
> - You can include a maximum of 20 protection units in a single request, and the response isn't paginated.
> - When you provide an expression for the **artifactQuery** property, you must provide only one protection unit ID in the **protectionUnitIds** property.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Search request

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restorepoint_search"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints/search
Content-Type: application/json

{
    "protectionUnitIds": ["23014d8c-71fe-4d00-a01a-31850bc5b42a", "43014d8c-71fe-4d00-a01a-31850bc5b42b", "63014d8c-71fe-4d00-a01a-31850bc5b42c", "83014d8c-71fe-4d00-a01a-31850bc5b42d"],
    "protectionTimePeriod": {
        "startDateTime": "2021-01-01T00:00:00Z",
        "endDateTime": "2021-01-08T00:00:00Z"
    },
    "restorePointPreference": "latest",
    "tags": "fastRestore"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restorepoint-search-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restorepoint-search-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restorepoint-search-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restorepoint-search-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restorepoint-search-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restorepoint-search-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restorepoint-search-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.restorePointSearchResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"/solutions/backupRestore/$metadata#restorePoints",
    "searchResponseId": "M2UyZDAwMDAwMDMxMzkzYTMyNj",
    "searchResults": [
        {
            "restorePoint": {
                "@odata.type": "#microsoft.graph.restorePoint",
                "id":"1f1fccc3-a642-4f61-bf49-f37b9a888279",
                "protectionDateTime":"2023-01-04T00:00:00Z",
                "expirationDateTime":"2024-01-04T00:00:00Z",
                "protectionUnit":{
                   "@odata.type": "#microsoft.graph.siteProtectionUnit",
                   "id":"23014d8c-71fe-4d00-a01a-31850bc5b42a",
                   "siteId":"344d9337-d8f0-456e-92cd-00a3abdd2093",
                   "policyId":"9fec8e78-bce4-4aaf-ab1b-5451cc387264"
               },
               "tags": "fastRestore"
            }
        },
        {
            "restorePoint": {
                "@odata.type": "#microsoft.graph.restorePoint",
                "id":"cdf4a823-sfde-ki2s-kmsj-clu2nsdk43ga",
                "protectionDateTime":"2023-01-03T00:00:00Z",
                "expirationDateTime":"2024-01-03T00:00:00Z",
                "protectionUnit":{
                   "@odata.type": "#microsoft.graph.siteProtectionUnit",
                   "id":"43014d8c-71fe-4d00-a01a-31850bc5b42b",
                   "siteId":"344d9337-d8f0-456e-92cd-00a3abdd2093",
                   "policyId":"9fec8e78-bce4-4aaf-ab1b-5451cc387264"
               },
               "tags": "fastRestore"
            }
        },
        {
            "restorePoint": {
                "@odata.type": "#microsoft.graph.restorePoint",
                "id":"1f1fccc3-a642-4f61-bf49-f37b9a888280",
                "protectionDateTime":"2023-01-02T00:00:00Z",
                "expirationDateTime":"2024-01-02T00:00:00Z",
                "protectionUnit":{
                   "@odata.type": "#microsoft.graph.siteProtectionUnit",
                   "id":"83014d8c-71fe-4d00-a01a-31850bc5b42c",
                   "siteId":"344d9337-d8f0-456e-92cd-00a3abdd2093",
                   "policyId":"9fec8e78-bce4-4aaf-ab1b-5451cc387264"
                },
                "tags": "fastRestore"
            }
        }
    ],
    "noResultProtectionUnitIds": ["63014d8c-71fe-4d00-a01a-31850bc5b42c"]
}
```

### Example 2: Search with artifactQuery expression

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restorepoint_search_artifactquery"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints/search
Content-Type: application/json

{
  "artifactQuery": {
    "queryExpression": "(Sender -like 'abc@contoso.com') -and (Subject -like '*Check email*' -or Subject -like ' Important') -and (HasAttachment -eq 'true')",
    "artifactType": "message"
  },
  "protectionUnitIds": ["23014d8c-71fe-4d00-a01a-31850bc5b42a"],
  "protectionTimePeriod": {
    "startDateTime": "2021-01-01T00:00:00Z",
    "endDateTime": "2021-01-30T00:00:00Z"
  },
  "restorePointPreference": "oldest"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restorepoint-search-artifactquery-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restorepoint-search-artifactquery-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restorepoint-search-artifactquery-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restorepoint-search-artifactquery-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restorepoint-search-artifactquery-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restorepoint-search-artifactquery-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restorepoint-search-artifactquery-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.restorePointSearchResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#restorePoints",
  "searchResponseId": "M2UyZDAwMDAwMDMxMzkzYTMyNj",
  "searchResults": [
    {
      "artifactHitCount": 26,
      "restorePoint": {
        "@odata.type": "#microsoft.graph.restorePoint",
        "id": "1f1fccc3-a642-4f61-bf49-f37b9a888279",
        "protectionDateTime": "2023-01-04T00:00:00Z",
        "expirationDateTime": "2024-01-04T00:00:00Z",
        "protectionUnit": {
          "@odata.type": "#microsoft.graph.siteProtectionUnit",
          "id": "23014d8c-71fe-4d00-a01a-31850bc5b42a",
          "siteId": "344d9337-d8f0-456e-92cd-00a3abdd2093",
          "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "tags": "fastRestore"
      }
    }
  ]
}
```
## Exchange Granular Search Query Properties
### Supported Properties

The `queryExpression` property of the [artifactQuery](../resources/artifactquery.md) resource supports filtering restore points based on multiple criteria. You can combine multiple properties using logical operators to create complex search expressions.

The following table describes all supported properties for granular search queries.

| Property | Description | Value Type | Supported Operators | Wildcard Support |
|----------|-------------|------------|---------------------|------------------|
| **Subject** | The subject of the message or primary searchable string for other item types | String | `-like`, `-and` (up to 3) | `*` (after string) |
| **Sender** | Messages from the specified sender | Display name, Alias, SMTP address, or LegacyDN | `-like` | `*` (after string) |
| **Participants** | Messages with specified recipient in To, Bcc, or Cc fields | Display name, Alias, SMTP address, or LegacyDN | `-like`, `-and` (up to 3) | `*` (after string) |
| **HasAttachment** | Whether the message has an attachment | Boolean (`true` or `false`) | `-eq` | No |
| **MessageKind** | The mailbox item type for which to search | Enum: `Email`, `Note`, `Task`, `Contact`, `Calendar` | `-eq` | No |

### Examples

#### Example 1: Email search with multiple criteria

Search for emails from a specific sender with attachments.

```
(Sender -like 'abc@contoso.com') -and (HasAttachment -eq 'true')
```

#### Example 2: Subject and participant search

Search for emails with specific subject keywords and multiple participants.

```
(Subject -like 'Project Alpha*') -and (Participants -like 'john@contoso.com' -and Participants -like 'sarah@contoso.com')
```

#### Example 3: Calendar event search

Search for calendar events organized by a specific user.

```
(MessageKind -eq 'Calendar') -and (Sender -like 'admin@contoso.com')
```

#### Example 4: Contact search by name

Search for contacts by name pattern.

```
(MessageKind -eq 'Contact') -and (Subject -like 'Smith*')
```

#### Example 5: Comprehensive email search

Search for emails combining multiple criteria including message type, subject, sender, and attachments.

```
(MessageKind -eq 'Email') -and (Subject -like 'Invoice*') -and (Sender -like 'vendor*') -and (HasAttachment -eq 'true')
```

