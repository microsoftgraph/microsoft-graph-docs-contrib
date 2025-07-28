---
title: "Use $search Query Parameter in Microsoft Graph APIs"
description: Learn how to use the $search OData query parameter in Microsoft Graph to filter API results by search criteria. Includes examples for messages, people, and directory objects with practical code samples.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Luca.Spolidoro
ms.localizationpriority: high
ms.subservice: non-product-specific
ms.topic: concept-article
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 07/03/2025
#Customer intent: As a developer building apps that consume Microsoft Graph APIs, I want to learn how to use search expressions to get only the items that meet specific criteria, and reduce the amount of data the app processes, improving app efficiency.
---

# Use the $search query parameter in Microsoft Graph APIs

The `$search` query parameter is a powerful filtering mechanism in Microsoft Graph that enables you to find specific data by matching search criteria. 

Support for this query parameter varies by entity. Some entities, like Microsoft Entra resources that derive from [directoryObject](/graph/api/resources/directoryobject), support `$search` only in [advanced queries](/graph/aad-advanced-queries).

This article explains how to use the `$search` query parameter effectively with three key resource types: [mail messages](#use-search-on-message-collections), [people](#use-search-on-person-collections), and [Microsoft Entra ID objects (directory objects)](#use-search-on-directory-object-collections). You learn the specific syntax requirements, supported properties, and search behaviors for each resource type.

## Use $search on message collections

You can search [messages](/graph/api/resources/message) based on specific message properties. Search results are sorted by the date and time the message was sent. A `$search` request returns up to 1,000 results.

When you search messages without specifying message properties, the search targets these default properties: **from**, **subject**, and **body**.

The following example returns all messages in the signed-in user's Inbox that contains "pizza" in any of the three default search properties:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "search_my_messages"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$search="pizza"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/search-my-messages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/search-my-messages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/search-my-messages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/search-my-messages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/search-my-messages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/search-my-messages-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/search-my-messages-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

Alternatively, you can search messages by specifying message property names that Keyword Query Language (KQL) syntax recognizes. These property names correspond to properties defined in the **message** entity of Microsoft Graph. Outlook and other Microsoft 365 applications like SharePoint support KQL syntax, which provides a common discovery domain for their data stores.

| Searchable email property | Description                                                                                                                                                             | Example                                                                                                                          |
| :------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- |
| **attachment**            | Names of files attached to an email message.                                                                                                                        | [GET][search-att-example] `../me/messages?$search="attachment:api-catalog.md"`                                                   |
| **bcc**                   | The **bcc** field of an email message, specified as an SMTP address, display name, or alias.                                                                            | [GET][search-bcc-example] `../me/messages?$search="bcc:samanthab@contoso.com"&$select=subject,bccRecipients`                     |
| **body**                  | The body of an email message.                                                                                                                                           | [GET][search-body-example] `../me/messages?$search="body:excitement"`                                                            |
| **cc**                    | The **cc** field of an email message, specified as an SMTP address, display name, or alias.                                                                             | [GET][search-cc-example] `../me/messages?$search="cc:danas"&$select=subject,ccRecipients`                                        |
| **from**                  | The sender of an email message, specified as an SMTP address, display name, or alias.                                                                                   | [GET][search-from-example] `../me/messages?$search="from:randiw"&$select=subject,from`  <br/><br/>[GET][search-from-or-example] `../me/messages?$search="from:adelev OR from:alexw OR from: allanD"&$select=subject, from`                                         |
| **hasAttachment**         | `true` if an email message contains an attachment that isn't an inline attachment; `false` otherwise.                                                                      | [GET][search-hasatt-example] `../me/messages?$search="hasAttachments:true"`                                                        |
| **importance**            | The importance of an email message that a sender can specify when sending a message. Possible values are `low`, `medium`, or `high`.                              | [GET][search-imp-example] `../me/messages?$search="importance:high"&$select=subject,importance`                                  |
| **kind**                  | The type of message. Possible values are `contacts`, `docs`, `email`, `faxes`, `im`, `journals`, `meetings`, `notes`, `posts`, `rssfeeds`, `tasks`, or `voicemail`. | [GET][search-kind-example] `../me/messages?$search="kind:voicemail"`                                                             |
| **participants**          | The **from**, **to**, **cc**, and **bcc** fields of an email message, specified as an SMTP address, display name, or alias.                                             | [GET][search-part-example] `../me/messages?$search="participants:danas"`                                                         |
| **received**              | The date a recipient received an email message.                                                                                                             | [GET][search-rcvd-example] `../me/messages?$search="received:07/23/2018"&$select=subject,receivedDateTime`                       |
| **recipients**            | The **to**, **cc**, and **bcc** fields of an email message, specified as an SMTP address, display name, or alias.                                                       | [GET][search-rcpts-example] `../me/messages?$search="recipients:randiq"&$select=subject,toRecipients,ccRecipients,bccRecipients` |
| **sent**                  | The date an email message was sent by the sender.                                                                                                                  | [GET][search-sent-example] `../me/messages?$search="sent:07/23/2018"&$select=subject,sentDateTime`                               |
| **size**                  | The size of an item in bytes.                                                                                                                                           | [GET][search-size-example] `../me/messages?$search="size:1..500000"`                                                             |
| **subject**               | The text in the subject line of an email message.                                                                                                                    | [GET][search-sbj-example] `../me/messages?$search="subject:has"&$select=subject`                                                 |
| **to**                    | The **to** field of an email message, specified as an SMTP address, display name, or alias.                                                                             | [GET][search-to-example]`.../me/messages?$search="to:randiw"&$select=subject,toRecipients`                                       |

For more information about searchable email properties, KQL syntax, supported operators, and search tips, see these articles:

- [Searchable properties in Exchange](/Exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators#searchable-properties-in-exchange)
- [Keyword Query Language (KQL) syntax reference](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)
- [Message properties and search operators for In-Place eDiscovery in Exchange 2016](/Exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators)

## Use $search on person collections

You can apply `$search` to the **displayName** and **emailAddresses** properties of the [person](/graph/api/resources/person) resource. Requests return up to 250 results by default.

The following request searches for "Irene McGowan" in the **person** objects collection for the signed-in user. Microsoft Graph searches the **displayName** and **emailAddresses** properties.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "search_my_people"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/people/?$search="Irene McGowen"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/search-my-people-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/search-my-people-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/search-my-people-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/search-my-people-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/search-my-people-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/search-my-people-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/search-my-people-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following example shows the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
       {
           "id": "C0BD1BA1-A84E-4796-9C65-F8A0293741D1",
           "displayName": "Irene McGowan",
           "givenName": "Irene",
           "surname": "McGowan",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": "Auditor",
           "companyName": null,
           "yomiCompany": "",
           "department": "Finance",
           "officeLocation": "12/1110",
           "profession": "",
           "userPrincipalName": "irenem@contoso.com",
           "imAddress": "sip:irenem@contoso.com",
           "scoredEmailAddresses": [
               {
                   "address": "irenem@contoso.com",
                   "relevanceScore": -16.446060612802224
               }
           ],
           "phones": [
               {
                   "type": "Business",
                   "number": "+1 412 555 0109"
               }
           ],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       }
   ]
}
```

To learn more about the People API, see [Get information about relevant people](./people-insights-overview.md#search-people).

## Use $search on directory object collections

Microsoft Entra ID resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject) support the `$search` query parameter only in [advanced queries](./aad-advanced-queries.md). 

> [!NOTE]
> - The `$search` query parameter is currently not available in Azure AD B2C tenants.
> - There's a [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=18185) with `$search` on directory objects for values that contain an ampersand (&) symbol.

The search implementation doesn't support "contains" logic. Instead, it uses a tokenization approach that extracts words from property values and search strings using spaces, numbers, different casing, and symbols as shown in these examples:

- **Spaces**: `hello world` => `hello`, `world`
- **Different casing**⁽<sup>1</sup>⁾: `HelloWorld` or `helloWORLD` => `hello`, `world`
- **Symbols**⁽<sup>2</sup>⁾: `hello.world` => `hello`, `.`, `world`, `helloworld`
- **Numbers**: `hello123world` => `hello`, `123`, `world`

⁽<sup>1</sup>⁾ For different casing, tokenization currently only works when casing changes from lowercase to uppercase. For example, `HELLOworld` is a single token: `helloworld`, and `HelloWORld` is two tokens: `hello`, `world`.

⁽<sup>2</sup>⁾ Tokenization logic also combines words that are separated only by symbols. For example, searching for `helloworld` finds `hello-world` and `hello.world`.

After tokenization, tokens are matched regardless of original casing and in any order. For example, displayName `李四(David Li)` matches search strings like `李四(David Li)`, `李四`, `David`, `Li`, `David)`, `(李四`, `Li 李`. A change in alphabet (such as from Latin to Cyrillic or Chinese) doesn't create a new token. For example, displayName `蓝色group` matches the `蓝色group` and `蓝色` search strings, but not `group`. DisplayName `group蓝色` matches the `group蓝色` and `group` search strings, but not `蓝色` or `蓝`.

Tokenized search works only on the **displayName** and **description** fields. Any string type field can be used in `$search`, but fields other than **displayName** and **description** default to `$filter` `startswith` behavior.

For example:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "search_groups"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/?$search="displayName:OneVideo" OR "mail:onevideo"
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/search-groups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/search-groups-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/search-groups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/search-groups-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/search-groups-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/search-groups-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

This searches for all groups with display names that have `one` and `video` tokens, or mail starting with `onevideo`.

You can use `$search` together with `$filter`:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "search_filter_groups"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/?$filter=mailEnabled eq true&$search="displayName:OneVideo"
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/search-filter-groups-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/search-filter-groups-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/search-filter-groups-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/search-filter-groups-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/search-filter-groups-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/search-filter-groups-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/search-filter-groups-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

This searches for all mail-enabled groups with display names that look like "OneVideo". Results are filtered based on a logical conjunction (AND) of the `$filter` and the entire query in the `$search`.

The search syntax follows these rules:

- **General format**: $search="clause1" \[AND \| OR\] "clauseX"
- **Number of clauses**: Any number of clauses is supported. Parentheses for precedence are also supported.
- **Clause syntax**: "\<property>:\<text to search>"
  - You must specify the property name in the clause.
  - The whole clause must be enclosed in double quotes. If it contains double quotes or backslash, escape it with a backslash. All other special characters must be URL encoded.
- **Logical operators**: `AND` and `OR` operators must be outside double quotes and in uppercase.
- **Search behavior**: True search is only supported for **displayName** and **description** properties. Any property that can be used in `$filter` can also be used inside `$search`. Properties other than **displayName** and **description** default to `$filter` with "startsWith" behavior if search isn't supported.
- **Tokenization**: Both the string inputs you provide in `$search` and the searchable properties are split into parts by spaces, different casing, and character types (numbers and special characters).

The following table shows some examples:

| Object class | Description                                            | Example                                                                                                                                                                                                                                                                                                                                                                                                           |
| ------------ | ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User         | Address book display name of the user.                 | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24search%3D%22displayName%3AGuthr%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$search="displayName:Guthr"`                                                                                                                    |
| User         | Address book display name or mail of the user.         | [GET](https://developer.microsoft.com/graph/graph-explorer?request=users%3F%24search%3D%22displayName%3AGuthr%22%20OR%20%22mail%3AGuthr%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../users?$search="displayName:Guthr" OR "mail:Guthr"`                                                                          |
| Group        | Address book display name or description of the group. | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%3F%24search%3D%22description%3AOne%22%20AND%20(%22displayName%3AVideo%22%20OR%20%22displayName%3ADrive%22)&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../groups?$search="description:One" AND ("displayName:Video" OR "displayName:Drive")` |
| Group        | Address book display name on a mail-enabled group.     | [GET](https://developer.microsoft.com/graph/graph-explorer?request=groups%3F%24filter%3DmailEnabled%20eq%20true%26%24search%3D%22displayName%3AOneVideo%22&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com&headers=W3sibmFtZSI6IkNvbnNpc3RlbmN5TGV2ZWwiLCJ2YWx1ZSI6ImV2ZW50dWFsIn1d) `../groups?$filter=mailEnabled eq true&$search="displayName:OneVideo"`                                          |

[search-att-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22attachment%3Aapi-catalog%2Emd%22&method=GET&version=v1.0
[search-bcc-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22bcc%3Asamanthab%40contoso%2Ecom%22%26$select=subject,bccRecipients&method=GET&version=v1.0
[search-body-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22body%3Aexcitement%22&method=GET&version=v1.0
[search-cc-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22cc%3Adanas%22%26$select=subject,ccRecipients&method=GET&version=v1.0
[search-from-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22from%3Arandiw%22%26$select=subject,from&method=GET&version=v1.0
[search-from-or-example]: https://developer.microsoft.com/en-us/graph/graph-explorer?request=me%2Fmessages%3F%24search%3D%22from%3Aadelev%2BOR%2Bfrom%3Aalexw%2BOR%2Bfrom%3A%2BallanD%22%26%24select%3Dsubject%2C%2Bfrom&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com
[search-hasatt-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22hasAttachments=true%22&method=GET&version=v1.0
[search-imp-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22importance%3Ahigh%22%26$select=subject,importance&method=GET&version=v1.0
[search-kind-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22kind%3Avoicemail%22&method=GET&version=v1.0
[search-part-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22participants%3Adanas%22&method=GET&version=v1.0

[search-rcvd-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22received%3A07/23/2018%22%26$select=subject,receivedDateTime&method=GET&version=v1.0

[search-rcpts-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22recipients%3Arandiw%22%26$select=subject,toRecipients,ccRecipients,bccRecipients&method=GET&version=v1.0
[search-sent-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22sent%3A07/23/2018%22%26$select=subject,sentDateTime&method=GET&version=v1.0
[search-size-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22size%3A1%2E%2E500000%22&method=GET&version=v1.0

[search-sbj-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22subject%3Ahas%22%26$select=subject&method=GET&version=v1.0
[search-to-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=%22to%3Arandiw%22%26$select=subject,toRecipients&method=GET&version=v1.0

## Related content

- [Use query parameters to customize responses](/graph/query-parameters)
- [Advanced query capabilities on directory objects](/graph/aad-advanced-queries)
- [Query parameter limitations](https://developer.microsoft.com/graph/known-issues/?filterBy=Query%20parameters&search=)
