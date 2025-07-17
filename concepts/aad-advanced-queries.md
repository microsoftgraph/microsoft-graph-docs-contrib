---
title: "Advanced query capabilities on Microsoft Entra ID objects"
description: "Microsoft Entra ID objects support advanced query capabilities to efficiently access data."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Luca.Spolidoro
ms.topic: concept-article
ms.localizationpriority: high
ms.subservice: entra-applications
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 08/23/2024
#customer intent: As a developer building apps that call Microsoft Entra ID APIs on Microsoft Graph, I want to understand the advanced query capabilities, so that my app can efficiently access and retrieve specific data, and avoid errors.
---

# Advanced query capabilities on Microsoft Entra ID objects

Microsoft Graph supports advanced query capabilities on various Microsoft Entra ID objects, also called *directory objects*, to help you efficiently access data. Examples include the addition of **not** (`not`), **not equals** (`ne`), and **ends with** (`endsWith`) operators on the `$filter` query parameter.

The Microsoft Graph query engine uses an index store to fulfill query requests. To add support for additional query capabilities on some properties, those properties might be indexed in a separate store. This separate indexing improves query performance. However, these advanced query capabilities aren't available by default, the requestor must set the **ConsistencyLevel** header to `eventual` *and*, except for `$search`, use the `$count` query parameter. The **ConsistencyLevel** header and `$count` are referred to as *advanced query parameters*.

For example, to retrieve only inactive user accounts, you can run either of these queries that use the `$filter` query parameter:

**Option 1:** Use the `$filter` query parameter with the `eq` operator. This request works by default and doesn't require the advanced query parameters.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "aad_advanced_queries_get_users_accountenabled"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled eq false
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/aad-advanced-queries-get-users-accountenabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/aad-advanced-queries-get-users-accountenabled-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/aad-advanced-queries-get-users-accountenabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/aad-advanced-queries-get-users-accountenabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/aad-advanced-queries-get-users-accountenabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/aad-advanced-queries-get-users-accountenabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/aad-advanced-queries-get-users-accountenabled-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/aad-advanced-queries-get-users-accountenabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

**Option 2:** Use the `$filter` query parameter with the `ne` operator. This request isn't supported by default because the `ne` operator is only supported in advanced queries. Therefore, you must add the **ConsistencyLevel** header set to `eventual` *and* use the `$count=true` query string.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "aad_advanced_queries_get_users_not_acountenabled"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled ne true&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/aad-advanced-queries-get-users-not-acountenabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/aad-advanced-queries-get-users-not-acountenabled-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/aad-advanced-queries-get-users-not-acountenabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/aad-advanced-queries-get-users-not-acountenabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/aad-advanced-queries-get-users-not-acountenabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/aad-advanced-queries-get-users-not-acountenabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/aad-advanced-queries-get-users-not-acountenabled-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/aad-advanced-queries-get-users-not-acountenabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Microsoft Entra ID (directory) objects that support advanced query capabilities

Advanced query capabilities are supported only on directory objects and their relationships, including the following objects:

| Object                                                                                            | Relationships                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [administrativeUnit](/graph/api/resources/administrativeunit)                                     | <li>[members](/graph/api/administrativeunit-list-members)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| [application](/graph/api/resources/application)                                                   | <li>[owners](/graph/api/application-list-owners)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| [appRoleAssignment](/graph/api/resources/approleassignment)                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [device](/graph/api/resources/device)                                                             | <li>[memberOf](/graph/api/device-list-memberof) <li>[transitiveMemberOf](/graph/api/device-list-transitivememberof) <li>[registeredUsers](/graph/api/device-list-registeredusers) <li>[registeredOwners](/graph/api/device-list-registeredowners)                                                                                                                                                                                                                                                                                                                                                                   |
| [group](/graph/api/resources/group)                                                               | <li>[members](/graph/api/group-list-members) <li>[transitiveMembers](/graph/api/group-list-transitivemembers) <li>[memberOf](/graph/api/group-list-memberof) <li>[transitiveMemberOf](/graph/api/group-list-transitivememberof) <li>[owners](/graph/api/group-list-owners) <li>[appRoleAssignments](/graph/api/group-list-approleassignments)                                                                                                                                                                                                                                                                       |
| [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) (delegated permission grants) | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [orgContact](/graph/api/resources/orgContact)                                                     | <li>[memberOf](/graph/api/orgcontact-list-memberof) <li>[transitiveMemberOf](/graph/api/orgcontact-list-transitiveMemberOf)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [servicePrincipal](/graph/api/resources/serviceprincipal)                                         | <li>[memberOf](/graph/api/serviceprincipal-list-memberof) <li>[owners](/graph/api/serviceprincipal-list-owners)<li>[transitiveMemberOf](/graph/api/serviceprincipal-list-transitivememberof) <li>[appRoleAssignments](/graph/api/serviceprincipal-list-approleassignments) <li>[appRoleAssignedTo](/graph/api/serviceprincipal-list-approleassignedto) <li>[oAuth2PermissionGrant](/graph/api/serviceprincipal-list-oauth2permissiongrants)                                                                                                                                                                                                                           |
| [user](/graph/api/resources/user)                                                                 | <li>[memberOf](/graph/api/user-list-memberof) <li>[transitiveMemberOf](/graph/api/user-list-transitivememberof)<li>[ownedObjects](/graph/api/user-list-ownedobjects) <li>[registeredDevices](/graph/api/user-list-registereddevices) <li>[ownedDevices](/graph/api/user-list-owneddevices) <li>[transitiveManagers](/graph/api/user-list-manager) <li>[directReports](/graph/api/user-list-directreports) <li>[transitiveReports](/graph/api/user-get-transitivereports) <li>[appRoleAssignments](/graph/api/user-list-approleassignments) <li>[oAuth2PermissionGrant](/graph/api/user-list-oauth2permissiongrants) |

> [!NOTE]
> Use of `$filter` on the relationships of the preceding list of directory objects is supported only with advanced query parameters. However, in such cases, don't use `$expand` in the same request because it isn't supported with advanced query parameters.

## Query scenarios that require advanced query capabilities

The following table lists query scenarios on directory objects that are supported only in advanced queries:

| Description                                                              | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| :----------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Use of `$count` as a URL segment                                         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%2F%24count&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/groups/$count`                                                                                                                                                                                                                                     |
| Use of `$count` as a query string parameter                              | [GET](https://developer.microsoft.com/graph/graph-explorer?request=servicePrincipals%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/servicePrincipals?$count=true`                                                                                                                                                                                                   |
| Use of `$count` in a `$filter` expression                                | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24filter%3DassignedLicenses%2F%24count%2Bne%2B0%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=assignedLicenses/$count eq 0&$count=true`                                                                                                                             |
| Use of `$search`                                                         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24search%3D%22displayName%3ABrowser%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/applications?$search="displayName:Browser"`                                                                                                                                                                   |
| Use of `$orderby` on select properties                                   | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/applications?$orderby=displayName&$count=true`                                                                                                                                                             |
| Use of `$filter` with the `endsWith` operator                            | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DendsWith(mail%2C'%40outlook.com')&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$count=true&$filter=endsWith(mail,'@outlook.com')`                                                                                                                                     |
| Use of `$filter` and `$orderby` in the same query                        | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24filter%3DstartsWith(displayName%2C%20'Box')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../applications?$orderby=displayName&$filter=startsWith(displayName, 'Box')&$count=true`                                                                    |
| Use of `$filter` with the `startsWith` operators on specific properties. | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DstartsWith(mobilePhone%2C%20'25478')%20OR%20startsWith(mobilePhone%2C%20'25473')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=startsWith(mobilePhone, '25478') OR startsWith(mobilePhone, '25473')&$count=true`                                               |
| Use of `$filter` with `ne` and `not` operators                           | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DcompanyName%20ne%20null%20and%20NOT(companyName%20eq%20'Microsoft')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=companyName ne null and NOT(companyName eq 'Microsoft')&$count=true`                                                                         |
| Use of `$filter` with `not` and `startsWith` operators                   | [GET](https://developer.microsoft.com/graph/graph-explorer?request=%2Fusers%3F%24filter%3DNOT%20startsWith(displayName%2C%20'Conf')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=NOT startsWith(displayName, 'Conf')&$count=true`                                                                                                                    |
| Use of `$filter` on a collection with `endsWith` operator                | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DproxyAddresses%2Fany(p%3AendsWith(p%2C%2B'contoso.com'))%26select%3Did%2CdisplayName%2Cproxyaddresses&method=GET&version=beta&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$count=true&$filter=proxyAddresses/any (p:endsWith(p, 'contoso.com'))&$select=id,displayName,proxyaddresses` |
| Use of OData cast with transitive members list                           | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me%2FtransitiveMemberOf%2Fmicrosoft.graph.group%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/me/transitiveMemberOf/microsoft.graph.group?$count=true`                                                                                                                                           |

> [!NOTE]
>
> + Using `$filter` and `$orderby` together is supported only with advanced queries.
> + `$expand` is not currently supported with advanced queries.
> + The advanced query capabilities are currently not available for Azure AD B2C tenants.
> + To use advanced query capabilities in [batch requests](json-batching.md), specify the **ConsistencyLevel** header in the JSON body of the `POST` request.

## Support for filter by properties of Microsoft Entra ID (directory) objects

[!INCLUDE [directory-objects-filter](includes/directory-objects-filter.md)]

## Support for sorting by properties of Microsoft Entra ID (directory) objects

[!INCLUDE [directory-objects-orderby](includes/directory-objects-orderby.md)]

## Error handling for advanced queries on directory objects

The following section provides examples of common error scenarios when you don't use advanced query parameters where required.

Counting directory objects is only supported using the advanced queries parameters. If the `ConsistencyLevel=eventual` header isn't specified, the request returns an error when the `$count` URL segment (`/$count`) is used or silently ignores the `$count` query parameter (`?$count=true`) if it's used.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_count_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/$count
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-users-count-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-users-count-missing-advancedqueryparams-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-users-count-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-users-count-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-users-count-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-users-count-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-users-count-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-users-count-missing-advancedqueryparams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

<!-- {
  "blockType": "response",
  "@odata.type": "odata.error",
  "expectError": true
} -->
```json
{
    "error": {
        "code": "Request_BadRequest",
        "message": "$count is not currently supported.",
        "innerError": {
            "date": "2021-05-18T19:03:10",
            "request-id": "d9bbd4d8-bb2d-44e6-99a1-71a9516da744",
            "client-request-id": "539da3bd-942f-25db-636b-27f6f6e8eae4"
        }
    }
}
```

For directory objects, `$search` works only in advanced queries. If the **ConsistencyLevel** header isn't specified, the request returns an error.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applications_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications?$search="displayName:Browser"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-applications-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-applications-missing-advancedqueryparams-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-applications-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-applications-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-applications-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-applications-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-applications-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-applications-missing-advancedqueryparams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```json
{
    "error": {
        "code": "Request_UnsupportedQuery",
        "message": "Request with $search query parameter only works through MSGraph with a special request header: 'ConsistencyLevel: eventual'",
        "innerError": {
            "date": "2021-05-27T14:26:47",
            "request-id": "9b600954-ba11-4899-8ce9-6abad341f299",
            "client-request-id": "7964ef27-13a3-6ca4-ed7b-73c271110867"
        }
    }
}
```

If a property or query parameter in the URL is supported only in advanced queries but either the **ConsistencyLevel** header or the `$count=true` query string is missing, the request returns an error.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users?$filter=endsWith(userPrincipalName,'%23EXT%23@contoso.com')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/get-users-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/get-users-missing-advancedqueryparams-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/get-users-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/get-users-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/get-users-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/get-users-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/get-users-missing-advancedqueryparams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```json
{
    "error": {
        "code": "Request_UnsupportedQuery",
        "message": "Operator 'endsWith' is not supported because the required parameters might be missing. Try adding $count=true query parameter and ConsistencyLevel:eventual header. Refer to https://aka.ms/graph-docs/advanced-queries for more information",
        "innerError": {
            "date": "2023-07-14T08:43:39",
            "request-id": "b3731da7-5c46-4c37-a8e5-b190124d2531",
            "client-request-id": "a1556ddf-4794-929d-0105-b753a78b4c68"
        }
    }
}
```

If a property isn't indexed to support a query parameter, the request returns an error even if advanced query parameters are specified. For example, the **createdDateTime** property of the **group** resource isn't indexed for query capabilities.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_groups_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups?$filter=createdDateTime ge 2021-11-01&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/get-groups-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/get-groups-missing-advancedqueryparams-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/get-groups-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/get-groups-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-groups-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/get-groups-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/get-groups-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/get-groups-missing-advancedqueryparams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```json
{
    "error": {
        "code": "Request_UnsupportedQuery",
        "message": "Unsupported or invalid query filter clause specified for property 'createdDateTime' of resource 'Group'.",
        "innerError": {
            "date": "2023-07-14T08:42:44",
            "request-id": "b6a5f998-94c8-430d-846d-2eaae3031492",
            "client-request-id": "2be83e05-649e-2508-bcd9-62e666168fc8"
        }
    }
}
```

However, a request that includes query parameters might fail silently. For example, for unsupported query parameters and for unsupported combinations of query parameters. In these cases, examine the data returned by the request to determine whether the query parameters you specified had the desired effect. For example, in the following example, the `@odata.count` parameter is missing even if the query is successful.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_silent_fail"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$count=true
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-users-silent-fail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-users-silent-fail-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-users-silent-fail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-users-silent-fail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-users-silent-fail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-users-silent-fail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-users-silent-fail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-users-silent-fail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "value":[
    {
      "displayName":"Oscar Ward",
      "mail":"oscarward@contoso.com",
      "userPrincipalName":"oscarward@contoso.com"
    }
  ]
}
```

## Related content

+ [Use query parameters to customize responses](/graph/query-parameters)
+ [Query parameter limitations](https://developer.microsoft.com/graph/known-issues/?search=13635)
+ [Use the $search query parameter to match a search criterion](/graph/search-query-parameter#using-search-on-directory-object-collections)
+ [Explore advanced query capabilities for Microsoft Entra ID objects with the .NET SDK](https://github.com/microsoftgraph/dotnet-aad-query-sample/)

[RDS]: ../concepts/images/yesandnosymbols/greencheck.svg "Default"
[AQP]: ../concepts/images/yesandnosymbols/whitecheck-in-greencircle.svg "Advanced"
[NS]: ../concepts/images/yesandnosymbols/no.svg "Not Supported"
