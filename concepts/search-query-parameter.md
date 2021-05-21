---
title: "Use the $search query parameter in Microsoft Graph"
description: "Microsoft Graph supports the $search OData query parameter to restrict the results of a request to match a search criterion."
author: "mumbi-o"
localization_priority: Priority
ms.custom: graphiamtop20, scenarios:getting-started
---

# Use the $search query parameter to match a search criterion

In addition to [other OData query parameters](/graph/query-parameters), Microsoft Graph supports the `$search` query parameter to restrict the results of a request to match a search criterion.

The support for the `$search` query parameter varies by entity, with some, such as Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject), supporting `$search` only on eventual consistency.

> **Note:** The `$search` query parameter is currently not available in Azure AD B2C tenants.

## Using $search on message collections

You can search messages based on a value in specific message properties. The results of the search are sorted by the date and time that the message was sent. A `$search` request returns up to 250 results.

If you do a search on messages and specify only a value without specific message properties, the search is carried out on the default search properties of **from**, **subject**, and **body**.

The following example returns all messages in the signed-in user's Inbox that contains "pizza" in any of the three default search properties:

```http
GET https://graph.microsoft.com/v1.0/me/messages?$search="pizza"
```

[Try in Graph Explorer][search-example]

Alternatively, you can search messages by specifying message property names in the following table, that are recognized by the Keyword Query Language (KQL) syntax. These property names correspond to properties defined in the **message** entity of Microsoft Graph. Outlook and other Microsoft 365 applications such as SharePoint support KQL syntax, providing the convenience of a common discovery domain for their data stores.


| Searchable email property                | Description | Example 
|:-------------------------|:------------|:---------|
| **attachment**           | The names of files attached to an email message.|[`me/messages?$search="attachment:api-catalog.md"`][search-att-example]
| **bcc**           | The **bcc** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="bcc:samanthab@contoso.com"&$select=subject,bccRecipients`][search-bcc-example]
| **body**           | The body of an email message.|[`me/messages?$search="body:excitement"`][search-body-example]
| **cc**           | The **cc** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="cc:danas"&$select=subject,ccRecipients`][search-cc-example]
| **from**           | The sender of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="from:randiw"&$select=subject,from`][search-from-example]
| **hasAttachment** | True if an email message contains an attachment that is not an inline attachment, false otherwise. |[`me/messages?$search="hasAttachments:true"`][search-from-example]
| **importance**           | The importance of an email message, which a sender can specify when sending a message. The possible values are `low`, `medium`, or `high`.|[`me/messages?$search="importance:high"&$select=subject,importance`][search-imp-example]
| **kind**           | The type of message. The possible values are `contacts`, `docs`, `email`, `faxes`, `im`, `journals`, `meetings`, `notes`, `posts`, `rssfeeds`, `tasks`, or `voicemail`.|[`me/messages?$search="kind:voicemail"`][search-kind-example]
| **participants**           | The **from**, **to**, **cc**, and **bcc** fields of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="participants:danas"`][search-part-example]
| **received**           | The date that an email message was received by a recipient.|[`me/messages?$search="received:07/23/2018"&$select=subject,receivedDateTime`][search-rcvd-example]
| **recipients**           | The **to**, **cc**, and **bcc** fields of an email meesage, specified as an SMTP address, display name, or alias.|[`me/messages?$search="recipients:randiq"&$select=subject,toRecipients,ccRecipients,bccRecipients`][search-rcpts-example]
| **sent**           | The date that an email message was sent by the sender.|[`me/messages?$search="sent:07/23/2018"&$select=subject,sentDateTime`][search-sent-example]
| **size**           | The size of an item in bytes.|[`me/messages?$search="size:1..500000"`][search-size-example]
| **subject**           | The text in the subject line of an email message. .|[`me/messages?$search="subject:has"&$select=subject`][search-sbj-example]
| **to**           | The **to** field of an email message, specified as an SMTP address, display name, or alias.|[`me/messages?$search="to:randiw"&$select=subject,toRecipients`][search-to-example]


For more information about searchable email properties, KQL syntax, supported operators, and tips on searching, see the following articles:

- [Searchable properties in Exchange](/Exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators#searchable-properties-in-exchange).

- [Keyword Query Language (KQL) syntax reference](/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)

- [Message properties and search operators for In-Place eDiscovery in Exchange 2016](/Exchange/policy-and-compliance/ediscovery/message-properties-and-search-operators)

## Using $search on person collections

You can use the Microsoft Graph [People API](/graph/api/resources/person) to retrieve the people who are most relevant to a user. Relevance is determined by the user’s communication and collaboration patterns and business relationships. The People API supports the `$search` query parameter. A `$search` request returns up to 250 results.

Searches on people occur on both the **displayName** and **emailAddress** properties of the [person](/graph/api/resources/person) resource.

The following request does a search for a person named "Irene McGowen" in the **displayName** and **emailAddress** properties in each person in the **people** collection of the signed-in user. Because a person named "Irene McGowan" is relevant to the signed-in user, the information for "Irene McGowan" is returned.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search="Irene McGowen"
```

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
           "userPrincipalName": "irenem@contoso.onmicrosoft.com",
           "imAddress": "sip:irenem@contoso.onmicrosoft.com",
           "scoredEmailAddresses": [
               {
                   "address": "irenem@contoso.onmicrosoft.com",
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

To learn more about the People API, see [Get information about relevant people](./people-example.md#search-people).  

## Using $search on directory object collections

Azure AD resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject) support the `$search` query parameter on eventual consistency only. The search uses a tokenization approach which works by extracting words from your input and output string, using spaces, numbers, different casing, and symbols to separate the words, as follows:

* **Spaces**: `hello world` => `hello`, `world`
* **Different casing**⁽¹⁾: `HelloWorld` or `helloWORLD` => `hello`, `world`
* **Symbols**⁽²⁾: `hello.world` => `hello`, `.`, `world`, `helloworld`
* **Numbers**: `hello123world` => `hello`, `123`, `world`

⁽¹⁾ Currently, tokenization only works when the casing is changing from lowercase to uppercase, so `HELLOworld` is considered a single token: `helloworld`, and `HelloWORld` is two tokens: `hello`, `world`. 
⁽²⁾ Tokenization logic also combines words that are separated only by symbols; for example, searching for `helloworld` will find `hello-world` and `hello.world`.

> **Note**: after tokenization, the tokens are matched independently of the original casing, and they are matched in any order.

The tokenized search support works only on the **displayName** and **description** fields. Any field of string type can be put in `$search`; fields other than **displayName** and **description** default to `$filter` `startswith` behavior. For example:

`https://graph.microsoft.com/beta/groups/?$search="displayName:OneVideo"`

This looks for all groups with display names that look like "OneVideo". `$search` can be used together with `$filter` as well. For example:

`https://graph.microsoft.com/beta/groups/?$filter=mailEnabled eq true&$search="displayName:OneVideo"`

This looks for all mail-enabled groups with display names that look like "OneVideo". The results are restricted based on a logical conjunction (an "AND") of the `$filter` and the entire query in the `$search`. The search text is tokenized based on casing, but matches are performed in a case-insensitive manner. For example, "OneVideo" would be split into two input tokens "one" and "video", but matches properties insensitive to case.

The syntax of search follows these rules:

* Generic format: $search="clause1" \[AND \| OR\] "\[clauseX\]"\.
* Any number of clauses is supported. Parentheses for precedence is also supported.
* The syntax for each clause is: "\<property>:\<text to search>".
* The property name must be specified in the clause. Any property that can be used in `$filter` can also be used inside `$search`. Depending on the property, the search behavior is either "search" or "startswith" if search is not supported on the property.
* The whole clause part must be put inside double quotes.
* Logical operator 'AND' 'OR' must be put outside double quotes. They must be in upper case.
* Given that the whole clause part needs to be put inside double quotes, if it contains double quote and backslash, it needs to be escaped with a backslash. No other characters need to be escaped.

The following table shows some examples.

| Object class | Description | Example |
| ------------ | ----------- | ------- |
| User | Address book display name of the user. | `https://graph.microsoft.com/beta/users?$search="displayName:Guthr"` |
| User | Address book display name or mail of the user. | `https://graph.microsoft.com/beta/users?$search="displayName:Guthr" OR "mail:Guthr"` |
| Group | Address book display name or description of the group. | `https://graph.microsoft.com/beta/groups?$search="description:One" AND ("displayName:Video" OR "displayName:Drive")` |
| Group | Address book display name on a mail-enabled group. | `https://graph.microsoft.com/beta/groups?$filter=mailEnabled eq true&$search="displayName:OneVideo"` |

Both the string inputs you provide in `$search`, as well as the searchable properties, are split up into parts by spaces, different casing, and character types (numbers and special characters).

## See also

- [Use query parameters to customize responses](/graph/query-parameters)
