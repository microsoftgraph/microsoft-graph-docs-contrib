---
title: "Advanced query capabilities on Azure AD directory objects"
description: "Azure AD directory objects support advanced query capabilities to efficiently access data."
author: "Licantrop0"
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
---

# Advanced query capabilities on Azure AD directory objects

As Azure AD continues to deliver more capabilities and improvements in stability, availability, and performance, Microsoft Graph also continues to evolve and scale to efficiently access the data. One way is through Microsoft Graph's increasing support for advanced query capabilities on various Azure AD objects and their properties. For example, the addition of **Not** (`not`), **Not equals** (`ne`), and **Ends with** (`endsWith`) operators on the `$filter` query parameters.

The Microsoft Graph query engine uses an index store to fulfill query requests. To add support for additional query capabilities on some properties, these properties are now indexed in a separate store. This separate indexing allows Azure AD to increase support and improve the performance of the query requests. However, these advanced query capabilities are not available by default but, the requestor must also set the **ConsistencyLevel** header to `eventual` *and*, with the exception of `$search`, use the `$count` query parameter. The **ConsistencyLevel** header and `$count` are referred to as *advanced query parameters*.

For example, if you wish to retrieve only inactive user accounts, you can run either of these queries that use the `$filter` query parameter.

+ Use the `$filter` query parameter with the `eq` operator. This request will work by default, that is, the request does not require the advanced query parameters.

<!-- {
  "blockType": "ignored",
  "name": "get_users_enabled"
} -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled eq false
```

+ Use the `$filter` query parameter with the `ne` operator. This request is not supported by default because the `ne` operator is only supported in advanced queries. Therefore, you must add the **ConsistencyLevel** header set to `eventual` *and* use the `$count=true` query string.

<!-- {
  "blockType": "ignored",
  "name": "get_users_not_enabled"
} -->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=accountEnabled ne true&$count=true
ConsistencyLevel: eventual
```

These advanced query capabilities are supported only on the following subsets of Azure AD directory objects and their relationships:

| API / Object                                                                    | Relationships                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Administrative units](/graph/api/resources/administrativeunit)           | <li>[members](/graph/api/administrativeunit-list-members)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [Applications](/graph/api/resources/application)                          | <li>[owners](/graph/api/application-list-owners)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| [Contacts](/graph/api/resources/orgContact)                                  | <li>[memberOf](/graph/api/orgcontact-list-memberof)<li> [transitiveMemberOf](/graph/api/orgcontact-list-transitiveMemberOf)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| [Devices](/graph/api/resources/device)                                    | <li>[memberOf](/graph/api/device-list-memberof) <li> [transitiveMemberOf](/graph/api/device-list-transitivememberof) <li> [registeredUsers](/graph/api/device-list-registeredusers) <li> [registeredOwners](/graph/api/device-list-registeredowners)                                                                                                                                                                                                                                                                                                                                                             |
| [Groups](/graph/api/resources/group)                                      | <li>[members](/graph/api/group-list-members) <li> [transitiveMembers](/graph/api/group-list-transitivemembers) <li> [memberOf](/graph/api/group-list-memberof) <li> [transitiveMemberOf](/graph/api/group-list-transitivememberof) <li> [owners](/graph/api/group-list-owners) <li> [appRoleAssignments](/graph/api/group-list-approleassignments)                                                                                                                                                                                                                                                                       |
| [Service principals](/graph/api/resources/serviceprincipal)               | <li>[memberOf](/graph/api/serviceprincipal-list-memberof), <li>[transitiveMemberOf](/graph/api/serviceprincipal-list-transitivememberof) <li> [appRoleAssignments](/graph/api/serviceprincipal-list-approleassignments) <li> [appRoleAssignmentsTo](/graph/api/serviceprincipal-list-approleassignedto) <li> [oAuth2PermissionGrant](/graph/api/serviceprincipal-list-oauth2permissiongrants)                                                                                                                                                                                                                 |
| [User](/graph/api/resources/user)                                         | <li>[memberOf](/graph/api/user-list-memberof) <li> [transitiveMemberOf](/graph/api/user-list-transitivememberof)<li> [ownedObjects](/graph/api/user-list-ownedobjects) <li> [registeredDevices](/graph/api/user-list-registereddevices) <li> [ownedDevices](/graph/api/user-list-owneddevices) <li> [transitiveManagers](/graph/api/user-list-manager) <li> [directReports](/graph/api/user-list-directreports) <li> [transitiveReports](/graph/api/user-get-transitivereports) <li> [appRoleAssignments](/graph/api/user-list-approleassignments) <li> [oAuth2PermissionGrant](/graph/api/user-list-oauth2permissiongrants) |

The following table lists query scenarios on directory objects that are supported only in advanced queries:

| Description                                                              | Example                                                                                                                                                                                                                                                                                                                                                                                                                              |
| :----------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Use of `$count` as a URL segment                                         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%2F%24count&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../groups/$count`                                                                                                                                                                                       |
| Use of `$count` as a query string parameter                              | [GET](https://developer.microsoft.com/graph/graph-explorer?request=servicePrincipals%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../servicePrincipals?$count=true`                                                                                                                                                     |
| Use of `$search`                                                         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24search%3D%22displayName%3ABrowser%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../applications?$search="displayName:Browser"`                                                                                                                     |
| Use of `$orderby` on select properties                                   | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../applications?$orderby=displayName&$count=true`                                                                                                               |
| Use of `$filter` with the `endsWith` operator                            | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DendsWith(mail%2C'%40outlook.com')&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$count=true&$filter=endsWith(mail,'@outlook.com')`                                                                                       |
| Use of `$filter` and `$orderby` in the same query                        | [GET](https://developer.microsoft.com/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24filter%3DstartsWith(displayName%2C%20'Box')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../applications?$orderby=displayName&$filter=startsWith(displayName, 'Box')&$count=true`                       |
| Use of `$filter` with the `startsWith` operators on specific properties. | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DstartsWith(mobilePhone%2C%20'25478')%20OR%20startsWith(mobilePhone%2C%20'25473')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$filter=startsWith(mobilePhone, '25478') OR startsWith(mobilePhone, '25473')&$count=true` |
| Use of `$filter` with `ne` and `NOT` operators                           | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DcompanyName%20ne%20null%20and%20NOT(companyName%20eq%20'Microsoft')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$filter=companyName ne null and NOT(companyName eq 'Microsoft')&$count=true`                           |
| Use of `$filter` with `NOT` and `startsWith` operators                   | [GET](https://developer.microsoft.com/graph/graph-explorer?request=%2Fusers%3F%24filter%3DNOT%20startsWith(displayName%2C%20'Conf')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$filter=NOT startsWith(displayName, 'Conf')&$count=true`                                                                      |
| Use of OData cast with another query parameter                           | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me%2FtransitiveMemberOf%2Fmicrosoft.graph.group%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../me/transitiveMemberOf/microsoft.graph.group?$count=true`                                                                                             |

> [!NOTE]
>
> + Using `$filter` and `$orderBy` together is supported only with advanced queries.
> + `$expand` is not currently supported with advanced queries.
> + The advanced query capabilities are currently not available for Azure AD B2C tenants.

## Support for filter on properties of Azure AD directory objects

Properties of directory objects behave differently in their support for query parameters. The following are common scenarios for directory objects:

+ Queries that are supported by default will also work in advanced queries, but the response will be eventually consistent.
+ The `in` operator is supported by default whenever `eq` operator is supported by default.
+ The `endsWith` operator is supported only with advanced queries on `mail` and `userPrincipalName` properties.
+ The `not` and `ne` negation operators are supported only with advanced queries.
  + All properties that support the `eq` operator also support the `ne` or `not` operators.
  + For queries that use the `any` lambda operator, use the `not` operator. See [Filter using lambda operators](/graph/query-parameters#filter-using-lambda-operators).

The following tables summarizes support for `$filter` operators by properties of directory objects supported by the advanced query capabilities.

### Legend

+ ![Works by default. Does not require advanced query parameters.](../concepts/images/advanced-query-parameters/default.svg) The `$filter` operator works by default for that property.
+ ![Requires advanced query parameters.](../concepts/images/advanced-query-parameters/advanced.svg) The `$filter` operator **requires** *advanced query parameters*, which are:
  + `ConsistencyLevel=eventual` header
  + `$count=true` query string
+ ![Not supported.](../concepts/images/advanced-query-parameters/notSupported.svg) The `$filter` operator is not supported on that property. [Send us feedback](https://aka.ms/MsGraphAADSurveyDocs) to request that this property support `$filter` for your scenarios.
+ Blank cells indicate that the query is not valid for that property.
+ The **null value** column indicates that the property is nullable and filterable using `null`.
+ Properties that are not listed here do not support `$filter` at all.

[!INCLUDE [filter-directory-objects](../includes/filter-directory-objects.md)]

## Error handling for advanced queries on directory objects

Counting directory objects is only supported using the advanced queries parameters. If the `ConsistencyLevel=eventual` header is not specified, the request returns an error when the `$count` URL segment is used or silently ignores the `$count` query parameter (`?$count=true`) if it's used.

```http
https://graph.microsoft.com/v1.0/users/$count
```

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

```http
https://graph.microsoft.com/v1.0/applications?$search="displayName:Browser"
```

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

```http
https://graph.microsoft.com/v1.0/users?$filter=endsWith(mail,'@outlook.com')
```

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

```http
https://graph.microsoft.com/v1.0/users?$filter=id ge '398164b1-5196-49dd-ada2-364b49f99b27'&$count=true
ConsistencyLevel: eventual
```

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

However, it is important to note that query parameters specified in a request might fail silently. This can be true for unsupported query parameters as well as for unsupported combinations of query parameters. In these cases, you should examine the data returned by the request to determine whether the query parameters you specified had the desired effect. For example, in the following example, the `@odata.count` parameter is missing even if the query is successful.

```http
https://graph.microsoft.com/v1.0/users?$count=true
```

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
+ [Query parameter limitations](known-issues.md#query-parameter-limitations)
+ [Use the $search query parameter to match a search criterion](/graph/search-query-parameter)
