---
title: "Advanced query capabilities on Azure AD objects"
description: "Azure AD objects support advanced query capabilities to efficiently access data."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: Luca.Spolidoro
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 04/14/2023
---

# Advanced query capabilities on Azure AD objects

As Azure Active Directory (Azure AD) continues to deliver more capabilities and improvements in stability, availability, and performance, Microsoft Graph also continues to evolve and scale to efficiently access the data. One way is through Microsoft Graph's increasing support for advanced query capabilities on various Azure Active Directory (Azure AD) objects, also called directory objects, and their properties. For example, the addition of **not** (`not`), **not equals** (`ne`), and **ends with** (`endsWith`) operators on the `$filter` query parameter.

The Microsoft Graph query engine uses an index store to fulfill query requests. To add support for additional query capabilities on some properties, these properties are now indexed in a separate store. This separate indexing allows Azure AD to increase support and improve the performance of the query requests. However, these advanced query capabilities are not available by default but, the requestor must also set the **ConsistencyLevel** header to `eventual` *and*, with the exception of `$search`, use the `$count` query parameter. The **ConsistencyLevel** header and `$count` are referred to as *advanced query parameters*.

For example, to retrieve only inactive user accounts, you can run either of these queries that use the `$filter` query parameter.

**Option 1:** Use the `$filter` query parameter with the `eq` operator. This request will work by default, that is, the request does not require the advanced query parameters.

<!-- {
  "blockType": "request",
  "name": "aad_advanced_queries_get_users_accountenabled"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled eq false
```

**Option 2:** Use the `$filter` query parameter with the `ne` operator. This request is not supported by default because the `ne` operator is only supported in advanced queries. Therefore, you must add the **ConsistencyLevel** header set to `eventual` *and* use the `$count=true` query string.

<!-- {
  "blockType": "request",
  "name": "aad_advanced_queries_get_users_not_acountenabled"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled ne true&$count=true
ConsistencyLevel: eventual
```

## Microsoft Graph objects that support advanced query capabilities

These advanced query capabilities are supported only on directory objects and their relationships, including the following frequently used objects:

| Object                                                                                            | Relationships                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [administrativeUnit](/graph/api/resources/administrativeunit)                                     | <li>[members](/graph/api/administrativeunit-list-members)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| [application](/graph/api/resources/application)                                                   | <li>[owners](/graph/api/application-list-owners)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| [appRoleAssignment](/graph/api/resources/approleassignment)                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [device](/graph/api/resources/device)                                                             | <li>[memberOf](/graph/api/device-list-memberof) <li>[transitiveMemberOf](/graph/api/device-list-transitivememberof) <li>[registeredUsers](/graph/api/device-list-registeredusers) <li>[registeredOwners](/graph/api/device-list-registeredowners)                                                                                                                                                                                                                                                                                                                                                                   |
| [group](/graph/api/resources/group)                                                               | <li>[members](/graph/api/group-list-members) <li>[transitiveMembers](/graph/api/group-list-transitivemembers) <li>[memberOf](/graph/api/group-list-memberof) <li>[transitiveMemberOf](/graph/api/group-list-transitivememberof) <li>[owners](/graph/api/group-list-owners) <li>[appRoleAssignments](/graph/api/group-list-approleassignments)                                                                                                                                                                                                                                                                       |
| [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) (delegated permission grants) | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [orgContact](/graph/api/resources/orgContact)                                                     | <li>[memberOf](/graph/api/orgcontact-list-memberof) <li>[transitiveMemberOf](/graph/api/orgcontact-list-transitiveMemberOf)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [servicePrincipal](/graph/api/resources/serviceprincipal)                                         | <li>[memberOf](/graph/api/serviceprincipal-list-memberof) <li>[transitiveMemberOf](/graph/api/serviceprincipal-list-transitivememberof) <li>[appRoleAssignments](/graph/api/serviceprincipal-list-approleassignments) <li>[appRoleAssignmentsTo](/graph/api/serviceprincipal-list-approleassignedto) <li>[oAuth2PermissionGrant](/graph/api/serviceprincipal-list-oauth2permissiongrants)                                                                                                                                                                                                                           |
| [user](/graph/api/resources/user)                                                                 | <li>[memberOf](/graph/api/user-list-memberof) <li>[transitiveMemberOf](/graph/api/user-list-transitivememberof)<li>[ownedObjects](/graph/api/user-list-ownedobjects) <li>[registeredDevices](/graph/api/user-list-registereddevices) <li>[ownedDevices](/graph/api/user-list-owneddevices) <li>[transitiveManagers](/graph/api/user-list-manager) <li>[directReports](/graph/api/user-list-directreports) <li>[transitiveReports](/graph/api/user-get-transitivereports) <li>[appRoleAssignments](/graph/api/user-list-approleassignments) <li>[oAuth2PermissionGrant](/graph/api/user-list-oauth2permissiongrants) |

## Query scenarios that require advanced query capabilities

The following table lists query scenarios on directory objects that are supported only in advanced queries:

| Description | Example |
|:--|:--|
| Use of `$count` as a URL segment | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%2F%24count&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/groups/$count` |
| Use of `$count` as a query string parameter | [GET](https://developer.microsoft.com/graph/graph-explorer?request=servicePrincipals%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/servicePrincipals?$count=true` |
| Use of `$count` in a `$filter` expression | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24filter%3DassignedLicenses%2F%24count%2Bne%2B0%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=assignedLicenses/$count eq 0&$count=true` |
| Use of `$search` | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24search%3D%22displayName%3ABrowser%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/applications?$search="displayName:Browser"` |
| Use of `$orderby` on select properties | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/applications?$orderby=displayName&$count=true` |
| Use of `$filter` with the `endsWith` operator | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DendsWith(mail%2C'%40outlook.com')&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$count=true&$filter=endsWith(mail,'@outlook.com')` |
| Use of `$filter` and `$orderby` in the same query | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24filter%3DstartsWith(displayName%2C%20'Box')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../applications?$orderby=displayName&$filter=startsWith( displayName, 'Box')&$count=true` |
| Use of `$filter` with the `startsWith` operators on specific properties. | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DstartsWith(mobilePhone%2C%20'25478')%20OR%20startsWith(mobilePhone%2C%20'25473')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=startsWith(mobilePhone, '25478') OR startsWith(mobilePhone, '25473')&$count=true` |
| Use of `$filter` with `ne` and `not` operators | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DcompanyName%20ne%20null%20and%20NOT(companyName%20eq%20'Microsoft')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=companyName ne null and NOT(companyName eq 'Microsoft')&$count=true` |
| Use of `$filter` with `not` and `startsWith` operators | [GET](https://developer.microsoft.com/graph/graph-explorer?request=%2Fusers%3F%24filter%3DNOT%20startsWith(displayName%2C%20'Conf')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=NOT startsWith(displayName, 'Conf')&$count=true` |
| Use of `$filter` on a collection with `endsWith` operator | [GET](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DproxyAddresses%2Fany(p%3AendsWith(p%2C%2B'OnMicrosoft.com'))%26select%3Did%2CdisplayName%2Cproxyaddresses&method=GET&version=beta&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$count=true&$filter=proxyAddresses/any (p:endsWith(p, 'OnMicrosoft.com'))&$select=id,displayName,proxyaddresses` |
| Use of OData cast with transitive members list | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me%2FtransitiveMemberOf%2Fmicrosoft.graph.group%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/me/transitiveMemberOf/microsoft.graph.group?$count=true` |
    
> [!NOTE]
>
> + Using `$filter` and `$orderby` together is supported only with advanced queries.
> + `$expand` is not currently supported with advanced queries.
> + The advanced query capabilities are currently not available for Azure AD B2C tenants.
> + To use advanced query capabilities in [batch requests](json-batching.md), specify the **ConsistencyLevel** header in the JSON body of the `POST` request.

## Support for filter by properties of Azure AD (directory) objects

Properties of directory objects behave differently in their support for query parameters. The following are common scenarios for directory objects:

+ Queries that are supported by default will also work with advanced query parameters, but the response will be eventually consistent.
+ The `in` operator is supported by default whenever `eq` operator is supported by default.
+ The `endsWith` operator is supported only with advanced query parameters by **mail**, **otherMails**, **userPrincipalName**, and **proxyAddresses** properties.
+ Getting empty collections (`/$count eq 0`, `/$count ne 0`) and collections with less than one object (`/$count eq 1`, `/$count ne 1`) is supported only with advanced query parameters.
+ The `not` and `ne` negation operators are supported only with advanced query parameters.
  + All properties that support the `eq` operator also support the `ne` or `not` operators.
  + For queries that use the `any` lambda operator, use the `not` operator. See [Filter using lambda operators](/graph/filter-query-parameter#filter-using-lambda-operators).

The following tables summarize support for `$filter` operators by properties of directory objects and indicates where querying is supported through advanced query capabilities.

**Legend**

+ ![Works by default. Does not require advanced query parameters.](../concepts/images/yesandnosymbols/greencheck.svg) The `$filter` operator works by default for that property.
+ ![Requires advanced query parameters.](../concepts/images/yesandnosymbols/whitecheck-in-greencircle.svg) The `$filter` operator **requires** *advanced query parameters*, which are:
  + `ConsistencyLevel=eventual` header
  + `$count=true` query string
+ ![Not supported.](../concepts/images/yesandnosymbols/no.svg) The `$filter` operator is not supported on that property. [Send us feedback](https://aka.ms/MsGraphAADSurveyDocs) to request that this property support `$filter` for your scenarios.
+ Blank cells indicate that the query is not valid for that property.
+ The **null value** column indicates that the property is nullable and filterable using `null`.
+ Properties that are not listed here do not support `$filter` at all.

[!INCLUDE [filter-directory-objects](../includes/filter-directory-objects.md)]

## Support for sorting by properties of Azure AD (directory) objects

The following table summarizes support for `$orderby` by properties of directory objects and indicates where sorting is supported through advanced query capabilities.

**Legend**

+ ![Works by default. Does not require advanced query parameters.](../concepts/images/yesandnosymbols/greencheck.svg) The `$orderby` operator works by default for that property.
+ ![Requires advanced query parameters.](../concepts/images/yesandnosymbols/whitecheck-in-greencircle.svg) The `$orderby` operator **requires** *advanced query parameters*, which are:
  + `ConsistencyLevel=eventual` header
  + `$count=true` query string
+ Use of `$filter` and `$orderby` in the same query for directory objects always requires advanced query parameters. For more information, see [Query scenarios that require advanced query capabilities](#query-scenarios-that-require-advanced-query-capabilities).

| Directory object   | Property name                 | Supports $orderby |
|--------------------|-------------------------------|-------------------|
| administrativeUnit | createdDateTime               | ![Advanced][AQP]  |
| administrativeUnit | deletedDateTime               | ![Advanced][AQP]  |
| administrativeUnit | displayName                   | ![Advanced][AQP]  |
| application        | createdDateTime               | ![Advanced][AQP]  |
| application        | deletedDateTime               | ![Advanced][AQP]  |
| application        | displayName                   | ![Advanced][AQP]  |
| orgContact         | createdDateTime               | ![Advanced][AQP]  |
| orgContact         | displayName                   | ![Advanced][AQP]  |
| device             | approximateLastSignInDateTime | ![Advanced][AQP]  |
| device             | createdDateTime               | ![Advanced][AQP]  |
| device             | deletedDateTime               | ![Advanced][AQP]  |
| device             | displayName                   | ![Advanced][AQP]  |
| group              | deletedDateTime               | ![Advanced][AQP]  |
| group              | displayName                   | ![Default][RDS]   |
| servicePrincipal   | createdDateTime               | ![Advanced][AQP]  |
| servicePrincipal   | deletedDateTime               | ![Advanced][AQP]  |
| servicePrincipal   | displayName                   | ![Advanced][AQP]  |
| user               | createdDateTime               | ![Advanced][AQP]  |
| user               | deletedDateTime               | ![Advanced][AQP]  |
| user               | displayName                   | ![Default][RDS]   |
| user               | userPrincipalName             | ![Default][RDS]   |

## Error handling for advanced queries on directory objects

Counting directory objects is only supported using the advanced queries parameters. If the `ConsistencyLevel=eventual` header is not specified, the request returns an error when the `$count` URL segment is used or silently ignores the `$count` query parameter (`?$count=true`) if it's used.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_count_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/$count
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-users-count-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-users-count-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-users-count-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-users-count-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-users-count-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
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

For directory objects, `$search` works only in advanced queries. If the **ConsistencyLevel** header is not specified, the request returns an error.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applications_missing_advancedqueryparams"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications?$search="displayName:Browser"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applications-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applications-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applications-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applications-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applications-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applications-missing-advancedqueryparams-powershell-snippets.md)]
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
GET https://graph.microsoft.com/v1.0/users?$filter=endsWith(mail,'@outlook.com')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-users-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-users-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-users-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-users-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-users-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-users-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```json
{
    "error": {
        "code": "Request_UnsupportedQuery",
        "message": "Unsupported Query.",
        "innerError": {
            "date": "2021-05-18T19:12:36",
            "request-id": "63f2093c-399c-4350-9609-3ce9b62abe3c",
            "client-request-id": "e60ed0ba-df5d-e190-f056-f9c0318456d7"
        }
    }
}
```

If a property has not been indexed to support a query parameter, even if the advanced query parameters are specified, the request returns an error.


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
[!INCLUDE [sample-code](../includes/snippets/csharp/get-groups-missing-advancedqueryparams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-groups-missing-advancedqueryparams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-groups-missing-advancedqueryparams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-groups-missing-advancedqueryparams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-groups-missing-advancedqueryparams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-groups-missing-advancedqueryparams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

```json
{
    "error": {
        "code": "Request_UnsupportedQuery",
        "message": "The request uses a filter property that is not indexed",
        "innerError": {
            "date": "2021-06-10T19:32:01",
            "request-id": "5625ba13-0c9f-4fce-a853-4b52f3e0bd09",
            "client-request-id": "76fe4cd8-df3a-f8c3-659b-594274b6bb31"
        }
    }
}
```

However, it is important to note that query parameters specified in a request might fail silently.
This can be true for unsupported query parameters as well as for unsupported combinations of query parameters.
In these cases, you should examine the data returned by the request to determine whether the query parameters you specified had the desired effect. For example, in the following example, the `@odata.count` parameter is missing even if the query is successful.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_users_silent_fail"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$count=true
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-users-silent-fail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-users-silent-fail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-users-silent-fail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-users-silent-fail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-users-silent-fail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-users-silent-fail-powershell-snippets.md)]
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
    },
  ]
}
```

## See also

+ [Use query parameters to customize responses](/graph/query-parameters)
+ [Query parameter limitations](known-issues.md#some-limitations-apply-to-query-parameters)
+ [Use the $search query parameter to match a search criterion](/graph/search-query-parameter#using-search-on-directory-object-collections)
+ [Explore advanced query capabilities for Azure AD objects with the .NET SDK](https://github.com/microsoftgraph/dotnet-aad-query-sample/)



[RDS]: ../concepts/images/yesandnosymbols/greencheck.svg
[AQP]: ../concepts/images/yesandnosymbols/whitecheck-in-greencircle.svg
[NS]: ../concepts/images/yesandnosymbols/no.svg