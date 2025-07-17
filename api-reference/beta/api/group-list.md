---
title: "List groups"
description: "List all the groups available in an organization, excluding dynamic distribution groups."
ms.localizationpriority: high
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 11/30/2024
---

# List groups

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [groups](../resources/group.md) available in an organization, excluding dynamic distribution groups. To retrieve dynamic distribution groups, [use the Exchange admin center](/exchange/recipients/dynamic-distribution-groups/dynamic-distribution-groups).

This operation returns by default only a subset of the more commonly used properties for each group. These _default_ properties are noted in the [Properties](../resources/group.md#properties) section. To get properties that are _not_ returned by default, do a [GET operation](group-get.md) for the group and specify the properties in a `$select` OData query option. The **hasMembersWithLicenseErrors** and **isArchived** properties are an exception and are not returned in the `$select` query.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "group_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /groups
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. `$skip` isn't supported. The default and maximum page sizes are 100 and 999 group objects respectively. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

To list only Microsoft 365 groups (unified groups), apply a filter on **groupTypes**:

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/groups?$filter=groupTypes/any(c:c+eq+'Unified')
```

The `$search` query parameter supports tokenization only on the **displayName** and **description** fields and requires the **ConsistencyLevel** header. Fields other than **displayName** and **description** default to `$filter` `startsWith` behavior.

Extension properties also support query parameters as follows:

| Extension type       | Comments                      |
|----------------------|-------------------------------|
| Schema extensions    | Returned only with `$select`. |
| Open extensions      | Returned only with `$expand`. |
| Directory extensions | Returned by default.          |

For more information on OData query options, see [OData query parameters](/graph/query-parameters). For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

### Filter by group types

| Group type                     | API request |
|--------------------------------|-------------|
| Microsoft 365 (unified) groups | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups%3F%24filter%3DgroupTypes%2Fany(c%3Ac%2Beq%2B'Unified')&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) `/groups?$filter=groupTypes/any(c:c+eq+'Unified')`            |
| Security groups                | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups%3F%24filter%3DmailEnabled%2Beq%2Bfalse%26securityEnabled%2Beq%2Btrue&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)  `/groups?$filter=mailEnabled eq false&securityEnabled eq true`           |
| Mail-enabled security groups   | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups%3F%24filter%3DNOT%2BgroupTypes%2Fany(c%3Ac%2Beq%2B'Unified')%2Band%2BmailEnabled%2Beq%2Btrue%2Band%2BsecurityEnabled%2Beq%2Btrue%26%24count%3Dtrue&method=GET&version=beta&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)  `/groups?$filter=NOT groupTypes/any(c:c eq 'Unified') and mailEnabled eq true and securityEnabled eq true&$count=true` <sup> ** </sup>          |
| Distribution groups            | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups%3F%24filter%3DNOT%2BgroupTypes%2Fany(c%3Ac%2Beq%2B'Unified')%2Band%2BmailEnabled%2Beq%2Btrue%2Band%2BsecurityEnabled%2Beq%2Bfalse%26%24count%3Dtrue&method=GET&version=beta&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `/groups?$filter=NOT groupTypes/any(c:c eq 'Unified') and mailEnabled eq true and securityEnabled eq false&$count=true` <sup> ** </sup>           |

** : This example is only supported with [advanced query capabilities](/graph/aad-advanced-queries).

## Request headers

| Name             | Description                                                                                                                                                                                                                                                                     |
| :--------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [group](../resources/group.md) objects in the response body. The response includes only the default properties of each group.

## Examples

### Example 1: Get a list of groups

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_groups"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-groups-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groups-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groups-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-groups-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-groups-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the default properties are returned for each group in an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
   "value":[
      {
         "id":"45b7d2e7-b882-4a80-ba97-10b7a63b8fa4",
         "deletedDateTime":null,
         "classification":null,
         "createdDateTime":"2018-12-22T02:21:05Z",
         "description":"Self help community for golf",
         "displayName":"Golf Assist",
         "expirationDateTime":null,
         "groupTypes":[
            "Unified"
         ],
         "isAssignableToRole":null,
         "mail":"golfassist@contoso.com",
         "mailEnabled":true,
         "mailNickname":"golfassist",
         "membershipRule":null,
         "membershipRuleProcessingState":null,
         "onPremisesLastSyncDateTime":null,
         "onPremisesSecurityIdentifier":null,
         "onPremisesSyncEnabled":null,
         "preferredDataLocation":"CAN",
         "preferredLanguage":null,
         "proxyAddresses":[
            "smtp:golfassist@contoso.com",
            "SMTP:golfassist@contoso.com"
         ],
         "renewedDateTime":"2018-12-22T02:21:05Z",
         "resourceBehaviorOptions":[
         ],
         "resourceProvisioningOptions":[
         ],
         "securityEnabled":false,
         "serviceProvisioningErrors": [
         ],
         "theme":null,
         "visibility":"Public",
         "onPremisesProvisioningErrors":[
         ]
      },
      {
         "id":"d7797254-3084-44d0-99c9-a3b5ab149538",
         "deletedDateTime":null,
         "classification":null,
         "createdDateTime":"2018-11-19T20:29:40Z",
         "description":"Talk about golf",
         "displayName":"Golf Discussion",
         "expirationDateTime":null,
         "groupTypes":[
         ],
         "isAssignableToRole":null,
         "mail":"golftalk@contoso.com",
         "mailEnabled":true,
         "mailNickname":"golftalk",
         "membershipRule":null,
         "membershipRuleProcessingState":null,
         "onPremisesLastSyncDateTime":null,
         "onPremisesSecurityIdentifier":null,
         "onPremisesSyncEnabled":null,
         "preferredDataLocation":"CAN",
         "preferredLanguage":null,
         "proxyAddresses":[
            "smtp:golftalk@contoso.com",
            "SMTP:golftalk@contoso.com"
         ],
         "renewedDateTime":"2018-11-19T20:29:40Z",
         "resourceBehaviorOptions":[
         ],
         "resourceProvisioningOptions":[
         ],
         "securityEnabled":false,
         "serviceProvisioningErrors": [
         ],
         "theme":null,
         "visibility":null,
         "onPremisesProvisioningErrors":[
         ]
      }
   ]
}
```

### Example 2: Get a filtered list of groups 

This request that filters against the **hasMembersWithLicenseErrors** property doesn't support retrieving the count of returned objects.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_groups_withlicenseerrors_count"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$filter=hasMembersWithLicenseErrors+eq+true&$select=id,displayName
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groups-withlicenseerrors-count-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-groups-withlicenseerrors-count-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groups-withlicenseerrors-count-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groups-withlicenseerrors-count-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groups-withlicenseerrors-count-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groups-withlicenseerrors-count-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-groups-withlicenseerrors-count-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-groups-withlicenseerrors-count-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response which includes only the requested properties.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups(id,displayName)",
   "value":[
      {
         "id":"11111111-2222-3333-4444-555555555555",
         "displayName":"Contoso Group 1"
      },
      {
         "id":"22222222-3333-4444-5555-666666666666",
         "displayName":"Contoso Group 2"
      }
   ]
}
```

### Example 3: Get only a count of groups

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

> **Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

<!-- {
  "blockType": "ignored",
  "name": "get_count_only"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/$count
ConsistencyLevel: eventual
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: text/plain

893
```

### Example 4: Use $filter and $top to get one group with a display name that starts with 'a' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request has both the `$orderby` and `$filter` query parameters. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

> **Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_groups_startswith"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$filter=startswith(displayName, 'a')&$count=true&$top=1&$orderby=displayName
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groups-startswith-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-groups-startswith-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groups-startswith-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groups-startswith-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groups-startswith-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groups-startswith-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-groups-startswith-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-groups-startswith-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
   "@odata.count":1,
   "value":[
      {
         "displayName":"a",
         "mailNickname":"a241"
      }
   ]
}
```

### Example 5: Use $search to get groups with display names that contain the letters 'Video' or a description that contains the letters 'prod' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$search` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

> **Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_video_count_or_description"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$search="displayName:Video" OR "description:prod"&$orderby=displayName&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-video-count-or-description-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-video-count-or-description-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-video-count-or-description-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-video-count-or-description-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-video-count-or-description-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-video-count-or-description-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-video-count-or-description-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
   "@odata.count":1396,
   "value":[
      {
         "displayName":"SFA Videos",
         "mail":"SFAVideos@service.contoso.com",
         "mailNickname":"SFAVideos"
      },
      {
         "description":"Video Production",
         "displayName":"Video Production",
         "mail":"videoprod@service.contoso.com",
         "mailNickname":"VideoProduction"
      }
   ]
}
```

### Example 6: List dynamic groups

#### Request

The following example shows a request that filters by the **membershipRuleProcessingState** to retrieve dynamic groups. You may also filter by the **groupTypes** properties (that is, `$filter=groupTypes/any(s:s eq 'DynamicMembership')`). This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request uses the `not` operator of the `$filter` query parameter. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

> **Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_enabled_dynamic_groups"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$filter=mailEnabled eq false and securityEnabled eq true and NOT(groupTypes/any(s:s eq 'Unified')) and membershipRuleProcessingState eq 'On'&$count=true&$select=id,membershipRule,membershipRuleProcessingState
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-enabled-dynamic-groups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-enabled-dynamic-groups-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-enabled-dynamic-groups-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-enabled-dynamic-groups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-enabled-dynamic-groups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-enabled-dynamic-groups-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-enabled-dynamic-groups-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-enabled-dynamic-groups-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups(id,membershipRule,membershipRuleProcessingState)",
    "@odata.count": 1,
    "value": [
        {
            "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/e9f4a701-e7b5-4401-a0ca-5bd5f3cdcf4b/Microsoft.DirectoryServices.Group",
            "id": "e9f4a701-e7b5-4401-a0ca-5bd5f3cdcf4b",
            "membershipRule": "(user.userType -contains \"Guest\" and user.accountEnabled -eq true) or (user.city -eq \"Nairobi\")",
            "membershipRuleProcessingState": "On"
        }
    ]
}
```

### Example 7: List any groups with any licenses and get the group's members

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_groups_with_licenses"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$select=id,assignedLicenses&$filter=assignedLicenses/any()&$expand=members($select=id,displayName)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groups-with-licenses-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-groups-with-licenses-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groups-with-licenses-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groups-with-licenses-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groups-with-licenses-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groups-with-licenses-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-groups-with-licenses-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-groups-with-licenses-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups(id,assignedLicenses,members())",
  "value": [
    {
      "id": "5caf712c-8483-4b3d-8384-d8da988c0ca4",
      "assignedLicenses": [
        {
          "disabledPlans": [],
          "skuId": "6fd2c87f-b296-42f0-b197-1e91e994b900"
        }
      ],
      "members": [
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "0952e4c8-432f-4950-a65c-769c45993527"
        },
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "49e373b6-4717-40c6-ad43-843c45a258f0"
        }
      ]
    },
    {
      "id": "aae8ec2a-5a08-4013-ae70-fafbb5c20de1",
      "assignedLicenses": [
        {
          "disabledPlans": [
            "7547a3fe-08ee-4ccb-b430-5077c5041653"
          ],
          "skuId": "18181a46-0d4e-45cd-891e-60aabd171b4e"
        }
      ],
      "members": []
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List groups",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
