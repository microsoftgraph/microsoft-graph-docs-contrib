---
title: "Use the filter query parameter to filter a collection of objects"
description: "Learn how to use the filter OData query parameter and its operators against different types of properties in Microsoft Graph."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: "Luca.Spolidoro"
ms.localizationpriority: high
ms.prod: "applications"
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 04/14/2023
---

# Use the filter query parameter

Microsoft Graph supports the `$filter` [OData](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31360955) query parameter to retrieve a subset of a collection.

The expression specified with `$filter` is evaluated for each resource in the collection, and only items where the expression evaluates to `true` are included in the response. Resources for which the expression evaluates to `false` or to `null`, or which reference properties that are unavailable due to permissions, are omitted from the response.

The `$filter` query parameter can also be used to retrieve relationships like **members**, **memberOf**, **transitiveMembers**, and **transitiveMemberOf**. For example, "get all the security groups that I'm a member of".

## Operators and functions supported in filter expressions

Support for `$filter` operators varies across Microsoft Graph APIs. The following operators and functions are supported:

| Operator type         | Operator                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Equality operators    | <ul><li> Equals (`eq`) </li><li> Not equals (`ne`)</li><li> Logical negation (`not`)</li><li> In (`in`)</li><li> Has (`has`)</li></ul>                                |
| Relational operators  | <ul><li> Less than (`lt`) </li><li> Greater than (`gt`)</li><li> Less than or equal to (`le`)</li><li> Greater than or equal to (`ge`)</li></ul> |
| Lambda operators      | <ul><li> Any (`any`) </li><li> All (`all`)</li></ul>                                                                                             |
| Conditional operators | <ul><li> And (`and`) </li><li> Or (`or`)</li>                                                                                                    |
| Functions             | <ul><li> Starts with (`startsWith`) </li><li> Ends with (`endsWith`)</li><li> Contains (`contains`)</li></ul>                                                                   |

> [!NOTE]
> Support for these operators varies by entity and some properties support `$filter` only with [advanced queries](/graph/aad-advanced-queries). See the specific resource documentation for details.

## Filter using lambda operators

OData defines the `any` and `all` operators to evaluate matches on multi-valued properties, that is, either collection of primitive values such as String types or collection of entities.

### `any` operator

The `any` operator iteratively applies a Boolean expression to each item of a collection and returns `true` if the expression is `true` for *at least one item* of the collection, otherwise it returns `false`.  
The following is the syntax of the `any` operator:

```http
$filter=collection/any(property:property/subProperty eq 'value-to-match')
```

Where

+ *collection* is the property that contains a collection of values or a collection of complex properties.
+ *property:property* is the range variable that holds the current element of the collection during iteration. This variable can be named almost anything, for example, *p:p*.
+ *subProperty* is required when the query applies to a collection of entities. It represents the property of the complex type whose value you're matching against.
+ *value-to-match* represents the member of the collection against which you're matching.

If you are familiar with `C#` and `LINQ`, this would be the equivalent of the above syntax:

```csharp
collection.Any(property => property.subProperty == "value-to-match")
```

For example, the **imAddresses** property of the `user` resource contains a collection of String primitive types. The following query retrieves only users with an imAddress of `admin@contoso.com`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "filter-query-parameter-string-collection-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=imAddresses/any(i:i eq 'admin@contoso.com')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/filter-query-parameter-string-collection-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/filter-query-parameter-string-collection-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/filter-query-parameter-string-collection-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/filter-query-parameter-string-collection-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/filter-query-parameter-string-collection-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/filter-query-parameter-string-collection-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The **assignedLicenses** property of the `user` resource contains a collection of **assignedLicense** objects, a complex type with two properties, **skuId** and **disabledPlans**. The following query retrieves only users with an assigned license identified by the **skuId** `184efa21-98c3-4e5d-95ab-d07053a96e67`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "filter-query-parameter-complex-collection-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=assignedLicenses/any(s:s/skuId eq 184efa21-98c3-4e5d-95ab-d07053a96e67)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/filter-query-parameter-complex-collection-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/filter-query-parameter-complex-collection-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/filter-query-parameter-complex-collection-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/filter-query-parameter-complex-collection-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/filter-query-parameter-complex-collection-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/filter-query-parameter-complex-collection-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

To negate the result of the expression inside the `any` clause, use the `not` operator, not the `ne` operator. For example, the following query retrieves only users who aren't assigned the **imAddress** of `admin@contoso.com`.
>**Note:** For directory objects like users, the `not` and `ne` operators are supported only in [advanced queries](/graph/aad-advanced-queries).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "filter-query-parameter-complex-collection-advancedquery-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=NOT(imAddresses/any(i:i eq 'admin@contoso.com'))&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/filter-query-parameter-complex-collection-advancedquery-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/filter-query-parameter-complex-collection-advancedquery-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/filter-query-parameter-complex-collection-advancedquery-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/filter-query-parameter-complex-collection-advancedquery-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/filter-query-parameter-complex-collection-advancedquery-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/filter-query-parameter-complex-collection-advancedquery-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### `all` operator

The `all` operator applies a Boolean expression to each member of a collection and returns `true` if the expression is `true` for *all the items* of the collection, otherwise it returns `false`. It isn't supported by any property.

## Examples using the filter query operator

The following table shows some examples that use the `$filter` query parameter. For more information, see the [OData protocol][odata-filter].

> [!NOTE]
>
> + Examples marked with <sup>*</sup> are only supported with [advanced query capabilities](/graph/aad-advanced-queries).
> + Click the examples to try them in [Graph Explorer][graph-explorer].

| Description                                                                                                                           | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| :------------------------------------------------------------------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Get all users with the name Mary across multiple properties.                                                                          | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users?$filter=startswith(displayName,'mary')+or+startswith(givenName,'mary')+or+startswith(surname,'mary')+or+startswith(mail,'mary')+or+startswith(userPrincipalName,'mary')&method=GET&version=v1.0) `~/users?$filter=startswith(displayName,'mary') or startswith(givenName,'mary') or startswith(surname,'mary') or startswith(mail,'mary') or startswith(userPrincipalName,'mary')`                                                                              |
| Get all users with mail domain equal to 'hotmail.com'                                                                                 | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24count%3Dtrue%26%24filter%3DendsWith(mail%2C'%40hotmail.com')%26%24select%3Did%2CdisplayName%2Cmail&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$count=true&$filter=endsWith(mail,'@hotmail.com')`<sup>*</sup>                                                                                                                                                     |
| Get all users without assigned licenses                                                                                               | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DassignedLicenses%2F%24count%2Bne%2B0%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=assignedLicenses/$count eq 0&$count=true`<sup>*</sup>                                                                                                                                                                                         |
| Get all the signed-in user's events that start after 7/1/2017.                                                                        | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me/events?$filter=start/dateTime+ge+'2017-07-01T08:00'&method=GET&version=v1.0) `~/me/events?$filter=start/dateTime ge '2017-07-01T08:00'`. <br/>**NOTE:** The **dateTime** property is a String type.                                                                                                                                                                                                                                                                |
| Get all emails from a specific address received by the signed-in user.                                                                | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$filter=from/emailAddress/address+eq+'someuser@.com'&method=GET&version=v1.0) `~/me/messages?$filter=from/emailAddress/address eq 'someuser@example.com'`                                                                                                                                                                                                                                                                                                 |
| Get all emails received by the signed-in user in April 2017.                                                                          | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=ReceivedDateTime+ge+2017-04-01+and+receivedDateTime+lt+2017-05-01&method=GET&version=v1.0) `~/me/mailFolders/inbox/messages?$filter=ReceivedDateTime ge 2017-04-01 and receivedDateTime lt 2017-05-01`                                                                                                                                                                                                                          |
| Get all unread mail in the signed-in user's Inbox.                                                                                    | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me/mailFolders/inbox/messages?$filter=isRead+eq+false&method=GET&version=v1.0) `~/me/mailFolders/inbox/messages?$filter=isRead eq false`                                                                                                                                                                                                                                                                                                                              |
| Get all users in the Retail and Sales departments.                                                                                    | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3Ddepartment%20in%20('Retail'%2C%20'Sales')&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) `~/users?$filter=department in ('Retail', 'Sales')`                                                                                                                                                                                                                                                                                       |
| List users with a particular service plan that is in a suspended state.                                                               | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DassignedPlans%2Fany(a%3Aa%2FservicePlanId%20eq%202e2ddb96-6af9-4b1d-a3f0-d6ecfd22edb2%20and%20a%2FcapabilityStatus%20eq%20'Suspended')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=assignedPlans/any(a:a/servicePlanId eq 2e2ddb96-6af9-4b1d-a3f0-d6ecfd22edb2 and a/capabilityStatus eq 'Suspended')&$count=true`<sup>*</sup> |
| List all non-Microsoft 365 groups in an organization.                                                                                 | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%3F%24filter%3DNOT%20groupTypes%2Fany(c%3Ac%20eq%20'Unified')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/groups?$filter=NOT groupTypes/any(c:c eq 'Unified')&$count=true`<sup>*</sup>                                                                                                                                                                     |
| List all users whose company name isn't undefined (that is, not a `null` value) or Microsoft.                                         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DcompanyName%20ne%20null%20and%20NOT(companyName%20eq%20'Microsoft')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=companyName ne null and NOT(companyName eq 'Microsoft')&$count=true`<sup>*</sup>                                                                                                                               |
| List all users whose company name is either undefined or Microsoft.                                                                   | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24filter%3DcompanyName%20in%20(null%2C%20'Microsoft')%26%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/users?$filter=companyName in (null, 'Microsoft')&$count=true`<sup>*</sup>                                                                                                                                                                             |
| Use OData cast to get transitive membership in groups with a display name that starts with 'a' including a count of returned objects. | [GET](https://developer.microsoft.com/graph/graph-explorer?request=me%2FtransitiveMemberOf%2Fmicrosoft.graph.group%3F%24count%3Dtrue&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `~/me/transitiveMemberOf/microsoft.graph.group?$count=true&$filter=startswith(displayName, 'a')`<sup>*</sup>                                                                                                                                                            |

## Syntax for using the filter OData query parameter

The following article demonstrates the syntax for using the `$filter` OData query parameter and its associated operators. The examples are provided for guidance only and don't reflect a comprehensive list for the application of `$filter`.

These examples show how to use `$filter` to match against supported properties and relationships that are primitive types, complex types, enumeration types, or a collection of one of these types.

> [!NOTE]
>
> + Examples marked with <sup>*</sup> are only supported with [advanced query capabilities](/graph/aad-advanced-queries).
> 
> + GUID and DateTimeOffset values aren't enclosed in quotes in `$filter` expressions.

### For single primitive types like String, Int, and dates

| Operator               | Syntax                                                                                                                             |
|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| `eq`                   | `~/users?$filter=userType eq 'Member'`                                                                                             |
| `not`                  | `~/users?$filter=not(userType eq 'Member')`<sup>*</sup>                                                                                       |
| `ne`                   | `~/users?$filter=companyName ne null`<sup>*</sup>                                                                                             |
| `startsWith`           | `~/users?$filter=startsWith(userPrincipalName, 'admin')`                                                                           |
| `endsWith`             | `~/users?$filter=endsWith(mail,'@outlook.com')`<sup>*</sup>                                                                                   |
| `in`                   | `~/users?$filter=userType in ('Guest')`                                                                                            |
| `le`                   | `~/devices?$filter=registrationDateTime le 2021-01-02T12:00:00Z`<sup>*</sup>                                                                  |
| `ge`                   | `~/devices?$filter=registrationDateTime ge 2021-01-02T12:00:00Z`<sup>*</sup>                                                                  |
| `not` and `endsWith`   | `~/users?$filter=not(endsWith(mail, 'OnMicrosoft.com'))`<sup>*</sup>                                                                          |
| `not` and `startsWith` | `~/users?$filter=not(startsWith(mail, 'A'))`<sup>*</sup>                                                                                      |
| `not` and `eq`         | `~/users?$filter=not(companyName eq 'Contoso E.A.')`<sup>*</sup>                                                                              |
| `not` and `in`         | `~/users?$filter=not(userType in ('Member'))`<sup>*</sup>                                                                                     |
| `contains`             | `~/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, './members')` |
| `has`                  | `~/identity/conditionalAccess/templates?$filter=scenarios has 'secureFoundation'`                                                  |

### For a collection of primitive types

| Operator (s)                             | Syntax                                                             |
|-------------------------------------------|---------------------------------------------------------------------|
| `eq`                                     | `~/groups?$filter=groupTypes/any(c:c eq 'Unified')`                |
| `not`                                    | `~/groups?$filter=not(groupTypes/any(c:c eq 'Unified'))`<sup>*</sup>          |
| `ne`                                     | `~/users?$filter=companyName ne null`<sup>*</sup>                             |
| `startsWith`                             | `~/users?$filter=businessPhones/any(p:startsWith(p, '44'))`<sup>*</sup>       |
| `endsWith`                               | `~/users?$filter=endsWith(mail,'@outlook.com')`<sup>*</sup>                   |
| `not` and `endsWith`                     | `~/groups?$filter=not(endsWith(mail,'OnMicrosoft.com'))`<sup>*</sup>          |
| `not` and `startsWith`                   | `~/groups?$filter=not(startsWith(mail,'Pineview'))`<sup>*</sup>               |
| `not` and `eq`                           | `~/groups?$filter=not(mail eq 'PineviewSchoolStaff@Contoso.com')`<sup>*</sup> |
| `eq` and `$count` for empty collections  | `~/users?$filter=assignedLicenses/$count eq 0`<sup>*</sup>                    |
| `ne` and `$count` for empty collections  | `~/users?$filter=assignedLicenses/$count ne 0`<sup>*</sup>                    |
| `not` and `$count` for empty collections | `~/users?$filter=not(assignedLicenses/$count eq 0)`<sup>*</sup>               |
| `$count` for collections with one object | `~/servicePrincipals?$filter=owners/$count eq 1`<sup>*</sup>                  |

For the list of all properties of directory objects that support count of a collection in a filter expression, see [Count of a collection in a filter expression](/graph/aad-advanced-queries#count-of-a-collection-in-a-filter-expression).

<!--`in` - otherMails example; 
`not` and `in`; 
no examples available for ge and le
-->

### For GUID types

| Operator (s) | Syntax                                                                                                         |
|---------------|-----------------------------------------------------------------------------------------------------------------|
| `eq`         | `~/servicePrincipals?$filter=appOwnerOrganizationId eq 72f988bf-86f1-41af-91ab-2d7cd011db47`<sup>*</sup>                  |
| `not`        | `~/servicePrincipals?$filter=not(appOwnerOrganizationId eq 72f988bf-86f1-41af-91ab-2d7cd011db47)`<sup>*</sup> |

<!--
### For single complex types such as relationships

| Operator (s) | Syntax                                                                             |
| ------------ | ---------------------------------------------------------------------------------- |
| `eq`         | `~/applications?$filter=createdOnBehalfOf/deletedDateTime eq 2021-01-02T12:00:00Z` |
| `le`         | `~/applications?$filter=createdOnBehalfOf/deletedDateTime le 2021-01-02T12:00:00Z` |
| `ge`         | `~/users?$filter=manager/createdDateTime ge 2021-01-02T12:00:00Z`                  |
Hiding because the latest iteration of the report doesn't include these properties.
-->

### For a collection of GUID types

| Operator (s) | Syntax                                                         |
|---------------|-----------------------------------------------------------------|
| `eq`         | `~/devices?$filter=alternativeSecurityIds/any(a:a/type eq 2)`<sup>*</sup> |
| `le`         | `~/devices?$filter=alternativeSecurityIds/any(a:a/type le 2)`<sup>*</sup> |
| `ge`         | `~/devices?$filter=alternativeSecurityIds/any(a:a/type ge 2)`<sup>*</sup> |

### For a collection of complex types

| Operator (s)   | Syntax                                                                                    |
|-----------------|--------------------------------------------------------------------------------------------|
| `eq`           | `~/users?$filter=authorizationInfo/certificateUserIds/any(x:x eq '9876543210@mil')`<sup>*</sup>      |
| `not` and `eq` | `~/users?$filter=not(authorizationInfo/certificateUserIds/any(x:x eq '9876543210@mil'))`<sup>*</sup> |
| `startsWith`   | `~/users?$filter=authorizationInfo/certificateUserIds/any(x:startswith(x,'987654321'))`<sup>*</sup>  |
| `endsWith`     | `~/users?$filter=proxyAddresses/any(p:endsWith(p,'OnMicrosoft.com'))`<sup>*</sup>                    |

## See also

+ [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries)


<!-- Links -->

[odata-query]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356
[odata-filter]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752358
[graph-explorer]: https://developer.microsoft.com/graph/graph-explorer
