---
title: "Advanced query capabilities on Azure AD directory objects"
description: "Azure AD directory objects support advanced queries based on the OData query parameters."
author: "FaithOmbongi"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Advanced query capabilities on Azure AD directory objects

As Azure AD continues to deliver more capabilities and improvements in stability, availability, and performance, Microsoft Graph also continues to evolve and scale to efficiently access the data. One way is through Microsoft Graph's increasing support for more query capabilities on various Azure AD objects and their properties. For example, the addition of the **Not equals** (`ne`) and **Ends with** (`endsWith`) operators on the `$filter` query parameter in October, 2020.

The Microsoft Graph query engine uses an index store to fulfill query requests. To add support for additional query capabilities on some properties, these properties are now indexed in a separate server. This separate indexing allows Azure AD to increase support and improve the performance of the query requests. However, these advanced query capabilities are not available by default but, the requestor must set the **ConsistencyLevel** header with the value `eventual` *and*, with the exception of `$search`, use the `$count` query parameter (either as a [URL segment](/graph/query-parameters#other-odata-url-capabilities) or `$count=true` query string).

For example, if you wish to retrieve only inactive user accounts, you can run either of these queries that use the `$filter` query parameter.

1. Use the `$filter` query parameter with the `eq` operator. This request will work by default, that is, the request does not require any additional parameters or headers.

```http
https://graph.microsoft.com/v1.0/users?$filter=accountEnabled eq false
```
[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24filter%3DaccountEnabled%20eq%20false&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)

2. Use the `$filter` query parameter with the `ne` operator. This request is not supported by default because the `ne` operator is only supported in advanced queries. Therefore, you must add the **ConsistencyLevel** header with the value `eventual` *and* use the `$count=true` query string.

```http
https://graph.microsoft.com/v1.0/users?$filter=accountEnabled ne true&$count=true
ConsistencyLevel: eventual
```
[Try in Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24filter%3DaccountEnabled%20ne%20true%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)

These advanced query capabilities are supported only on Azure AD objects, that is, the following resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject):
- [application](/graph/api/resources/application)
- [orgContact](/graph/api/resources/orgcontact)
- [device](/graph/api/resources/device)
- [group](/graph/api/resources/group)
- [servicePrincipal](/graph/api/resources/serviceprincipal)
- [users](/graph/api/resources/user)

The following table lists query scenarios on directory objects that are supported only in advanced queries.

| Description                                                                   | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Use of `$count` as a URL segment                                              | [https://graph.microsoft.com/v1.0/groups/$count](https://developer.microsoft.com/en-us/graph/graph-explorer?request=groups%2F%24count&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                                                                                                                                                                                       |
| Use of `$count` as a query parameter, that is, the `$count=true` query string | [https://graph.microsoft.com/v1.0/servicePrincipals?$count=true](https://developer.microsoft.com/en-us/graph/graph-explorer?request=servicePrincipals%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                                                                                                                                                     |
| Use of `$search`                                                              | [https://graph.microsoft.com/v1.0/applications?$search="displayName:Browser"](https://developer.microsoft.com/en-us/graph/graph-explorer?request=applications%3F%24search%3D%22displayName%3ABrowser%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                                                                                                                     |
| Use of `$orderby` on select properties                                        | [https://graph.microsoft.com/v1.0/applications?$orderby=displayName&$count=true](https://developer.microsoft.com/en-us/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                                                                                                               |
| Use of `$filter` with the `endsWith` operator                                 | [https://graph.microsoft.com/v1.0/users?$count=true&$filter=endsWith(mail,'@hotmail.com')](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DendsWith(mail%2C'%40hotmail.com')&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                                                                                       |
| Use of `$filter` and `$orderby` in the same query                             | [https://graph.microsoft.com/v1.0/applications?$orderby=displayName&$filter=startsWith(displayName, 'Box')&$count=true](https://developer.microsoft.com/en-us/graph/graph-explorer?request=applications%3F%24orderby%3DdisplayName%26%24filter%3DstartsWith(displayName%2C%20'Box')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d)                       |
| Use of select operators of `$filter` on specific properties. See [more](#support-for-the-filter-query-parameter-on-properties-of-azure-ad-directory-objects).   | [https://graph.microsoft.com/v1.0/users?$filter=startsWith(mobilePhone, '25478') OR startsWith(mobilePhone, '25473')&$count=true](https://developer.microsoft.com/en-us/graph/graph-explorer?request=users%3F%24filter%3DstartsWith(mobilePhone%2C%20'25478')%20OR%20startsWith(mobilePhone%2C%20'25473')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) |
| Use of OData cast | [https://graph.microsoft.com/v1.0/me/transitiveMemberOf/microsoft.graph.group?$count=true](https://developer.microsoft.com/en-us/graph/graph-explorer?request=me%2FtransitiveMemberOf%2Fmicrosoft.graph.group%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) |

> [!NOTE] These advanced query capabilities are not available in Azure AD B2C tenants.

Properties of directory objects support `$filter` differently. However, the following is common across all directory objects:
+ The `endsWith` operator is only supported on **mail** and **userPrincipalName** properties.
+ The `ne` operator is supported only in advanced queries.

## Support for the filter query parameter on properties of Azure AD directory objects

Properties of directory objects support `$filter` differently. The following table summarizes parameter support for operators of `$filter`. 
* ⚪ indicates the property supports `$filter` with the operator by default. 
* ⚫ indicates that the use of `$filter` and the operator require the **ConsistencyLevel** header with the value `eventual` *and* the `$count` query parameter.
* Blank cells indicate that the property does not support the use of `$filter` with the operator.
* Properties that are not listed here do not support `$filter`.

> [!NOTE]
> 1. Properties with the same name across directory resources support the same `$filter` operators. For example, the **createdDateTime** property is available in **application**, **group**, **organization**, and **user** resources. It supports the `eq`, `ge`, and `le` operators by default and the `in` and `startsWith` operators only in advanced queries.
> 2. Queries that are supported by default will also work in advanced queries.

| Property                      | eq | ge | in | le | ne | startsWith | null values |
|:------------------------------|:---|:---|:---|:---|:---|:-----------|:------------|
| accountEnabled                | ⚪ | ⚫  | ⚪ | ⚫  | ⚫ |            |             |
| ageGroup                      | ⚪ |    | ⚪  |    | ⚫ |            |             |
| city                          | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚫          |
| companyName                   | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ | ⚫          | ⚫          |
| consentProvidedForMinor       | ⚪ |    | ⚪  |    | ⚫ |            |             |
| country                       | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| createdDateTime               | ⚪ | ⚪  | ⚫ | ⚪  | ⚫ |            |             |
| creationType                  | ⚪ |    | ⚪  |    | ⚫ |            |             |
| department                    | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| displayName                   | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| employeeHireDate              | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ |            |             |
| employeeId                    | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| employeeType                  | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ | ⚫          | ⚪          |
| givenName                     | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| infoCatalogs                  | ⚪ | ⚪  |    |    | ⚫ | ⚪          |             |
| jobTitle                      | ⚪ | ⚪  | ⚪ |    | ⚫  | ⚪         | ⚪           |
| mail                          | ⚪ | ⚪  | ⚪ |    | ⚫  | ⚪         | ⚪           |
| mailNickname                  | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| onPremisesExtensionAttributes | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ |            |             |
| onPremisesSamAccountName      | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ | ⚫          |             |
| onPremisesUserPrincipalName   | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          |             |
| postalCode                    | ⚫ | ⚫  |    | ⚫ | ⚫  | ⚫         | ⚫           |
| preferredLanguage             | ⚫ | ⚫  |    | ⚫ | ⚫  | ⚫         | ⚫           |
| proxyAddresses                | ⚪ | ⚪  |    | ⚪ | ⚫  | ⚪         | ⚪           |
| state                         | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| streetAddress                 | ⚫ | ⚫  | ⚫ | ⚫  | ⚫ | ⚫          | ⚫          |
| surname                       | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| usageLocation                 | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          | ⚪          |
| userPrincipalName             | ⚪ | ⚪  | ⚪ | ⚪  | ⚫ | ⚪          |             |
| userType                      | ⚪ |    | ⚪  |    | ⚫ |            | ⚪           |


## Error handling for advanced queries on directory objects

If a property or query parameter is only supported only in advanced queries but the **ConsistencyLevel** header with the value `eventual` is not specified, the request returns an error.

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

`$search` on Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject) works only in advanced queries. If the **ConsistencyLevel** header is not specified, the request returns an error.

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
https://graph.microsoft.com/beta/users?$filter=endswith(mail,'@hotmail.com')
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


## See also

- [Use query parameters to customize responses](/graph/query-parameters)
- [Query parameter limitations](known-issues.md#query-parameter-limitations)
- [Use the $search query parameter to match a search criterion](/graph/aad-advanced-queries)