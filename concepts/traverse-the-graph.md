---
title: "Access data and methods by navigating Microsoft Graph"
description: "In addition to using the Microsoft Graph API to read and write data, you can use a number of request patterns to traverse through the resources in Microsoft Graph. The metadata document also helps you to understand the data model of the resources and relationships in Microsoft Graph."
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 11/07/2024
---

# Access data and methods by navigating Microsoft Graph

In addition to using the Microsoft Graph API to read and write data, you can use a number of request patterns to traverse through the resources in Microsoft Graph. The metadata document also helps you to understand the data model of the resources and relationships in Microsoft Graph.

## Microsoft Graph API metadata

The metadata document ($metadata) is published at the service root. You can view the service document for the v1.0 and beta versions of the Microsoft Graph API via the following URLs.

**Microsoft Graph API v1.0 metadata**

```msgraph-interactive
https://graph.microsoft.com/v1.0/$metadata
```

**Microsoft Graph API beta metadata**

```msgraph-interactive
https://graph.microsoft.com/beta/$metadata
```

The metadata allows you to see and understand the Microsoft Graph data model, including the entity types, complex types, and enumerations that make up the resources represented in the request and response packets.

The metadata also supports defining types, methods, and enumerations in corresponding OData namespaces. The majority of the Microsoft Graph API is defined in the OData namespace, `microsoft.graph`. A few APIs are defined in subnamespaces, for example, `microsoft.graph.callRecords`.

You can use the metadata to learn the relationships between entities in Microsoft Graph and establish URLs that navigate between those entities.

> [!NOTE]
> - Use resource IDs in the same case as they are returned from Microsoft Graph APIs.
> - Assume resource IDs, values you assign, and other base-64-encoded values are _case-sensitive_.
> - Assume path URL resource names, query parameters, action and function names, their request body parameters, including any API property names and values, are _not case-sensitive_.

## View a collection of resources

Microsoft Graph lets you view resources in a tenant using HTTP `GET` queries. The query response includes properties of each resource. Entity resources are each identified by its ID. The format of a resource ID generally varies according to the resource type.

For example, you can get the collection of [user](/graph/api/resources/user) resources defined in a tenant:

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/users HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/users' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

If successful, you'll get a 200 OK response that contains the collection of **user** resources in the payload. Each user is
identified by the **id** property and accompanied by its default properties. The payload shown below is truncated for brevity.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users",
  "value":[
    {
      "id":"f71f1f74-bf1f-4e6b-b266-c777ea76e2c7",
      "businessPhones":[

      ],
      "displayName":"CIE Administrator",
      "givenName":"CIE",
      "jobTitle":null,
      "mail":"admin@contoso.com",
      "mobilePhone":"+1 3528700812",
      "officeLocation":null,
      "preferredLanguage":"en-US",
      "surname":"Administrator",
      "userPrincipalName":"admin@contoso.com"
    },
    {
      "id":"d66f2902-9d12-4ff8-ab01-21ec6706079f",
      "businessPhones":[

      ],
      "displayName":"Alan Steiner",
      "givenName":"Alan",
      "jobTitle":"VP Corporate Marketing",
      "mail":"alans@contoso.com",
      "mobilePhone":null,
      "officeLocation":null,
      "preferredLanguage":"en-US",
      "surname":"Steiner",
      "userPrincipalName":"alans@contoso.com"
    }
  ]
}
```

Microsoft Graph also lets you view collections by navigating the relationships of one resource with another. For example, through a user's **mailFolders** navigation property,
you can query for the collection of [mailFolder](/graph/api/resources/mailfolder) resources in the user's mailbox:

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/me/mailfolders HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/me/mailFolders' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

If successful, you'll get a 200 OK response that contains the collection of [mailFolder](/graph/api/resources/user) resources in the payload. Each **mailFolder** is
identified by the **id** property and accompanied by its properties. The payload shown below is truncated for brevity.

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#users('16f5a7b6-5a15-4568-aa5a-31bb117e9967')/mailFolders",
  "value":[
    {
      "id":"AAMkADRm9AABDGisXAAA=",
      "displayName":"Archive",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":0,
      "unreadItemCount":0,
      "totalItemCount":0
    },
    {
      "id":"AQMkADRm0AAAIBXAAAAA==",
      "displayName":"Sales reports",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":0,
      "unreadItemCount":0,
      "totalItemCount":0
    },
    {
      "id":"AAMkADRCxI9AAAT6CAIAAA=",
      "displayName":"Conversation History",
      "parentFolderId":"AQMkADRmZWj0AAAIBCAAAAA==",
      "childFolderCount":1,
      "unreadItemCount":0,
      "totalItemCount":0
    }
  ]
}
```

## View a specific resource from a collection by ID

For most entities in Microsoft Graph, the **id** is the primary key.

Continuing with using **user** as an example - to view the information about a user, use an HTTPS GET request to get a specific user by the user's ID. For a **user** entity, you can use either the **id** or **userPrincipalName** property as the identifier.

The following request example uses the **userPrincipalName** value as the user's ID.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.com HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/users/john.doe@contoso.com' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

If successful, you'll get a 200 OK response that contains the user resource representation in the payload, as shown.

```json
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 982

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "id": "c95e3b3a-c33b-48da-a6e9-eb101e8a4205",
    "city": "Redmond",
    "country": "USA",
    "department": "Help Center",
    "displayName": "John Doe",
    "givenName": "John",
    "userPrincipalName": "john.doe@contoso.com",

    ...
}
```

## View a specific resource from a collection by alternate key

Some entities support an alternate key, which you can use to retrieve an object instead of the primary key ID. For example, the [application](/graph/api/resources/application) and [servicePrincipal](/graph/api/resources/serviceprincipal) entities support the **appId** alternate key.

The following example uses the alternate key syntax to retrieve a service principal by its **appId**.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='00000003-0000-0000-c000-000000000000') HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location 'https://graph.microsoft.com/v1.0/servicePrincipals(appId='\''00000003-0000-0000-c000-000000000000'\'')' \
--header 'Authorization: Bearer eyJ0eXAiOiJK...gCZooG6A'
```

---

## Read specific properties of a resource
To retrieve only the user's biographical data, such as the user's provided _About me_ description and their skill set, you can add the [$select](query-parameters.md) query parameter to the previous request, as shown in the following example.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.com?$select=displayName,aboutMe,skills HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/users/john.doe@contoso.com?%24select=displayName%2CaboutMe%2Cskills' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

The successful response returns the 200 OK status and a payload, as shown.

```json
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 169

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
    "aboutMe": "A cool and nice guy.",
    "displayName": "John Doe",
    "skills": [
        "n-Lingual",
        "public speaking",
        "doodling"
    ]
}
```

Here, instead of the entire property sets on the **user** entity, only the **aboutMe**, **displayName**, and **skills** basic properties are returned.

When you make a GET request without using `$select` to limit the amount of properties data, Microsoft Graph includes a **@microsoft.graph.tips** property that provides a best practice recommendation for using `$select` similar to the following message:

```html
"@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET groups?$select=appMetadata,assignedLabels",
```

## Read only one property of a resource

You can retrieve a single property of a resource without using `$select`, by specifying the property name as a path segment. This query doesn't allow you to retrieve multiple properties, but it can be useful when you only need a single property.

The following example retrieves the **displayName** of a user.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/beta/users/8afc02cb-4d62-4dba-b536-9f6d73e9be26/displayName HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location 'https://graph.microsoft.com/beta/users/8afc02cb-4d62-4dba-b536-9f6d73e9be26/displayName' \
--header 'Authorization: Bearer eyJ0eXAiO...DZzY1aO3hym0eQ'
```

---

## Read specific properties of the resources in a collection
In addition to reading specific properties of a single resource, you can also apply the similar [$select](query-parameters.md) query parameter to a collection to get back all resources in the collection with just the specific properties returned on each.

For example, to query the name of the signed-in user's drive items, you can submit the following HTTPS GET request.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/me/drive/root/children?$select=name HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/me/drive/root/children?%24select=name' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

The successful response returns a 200 OK status code and a payload that contains only the names of the shared files, as shown in the following example.

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('john.doe%40contoso.com')/drive/root/children(name,type)",
  "value": [
    {
      "@odata.etag": "\"{896A8E4D-27BF-424B-A0DA-F073AE6570E2},2\"",
      "name": "Shared with Everyone"
    },
    {
      "@odata.etag": "\"{B39D5D2E-E968-491A-B0EB-D5D0431CB423},1\"",
      "name": "Documents"
    },
    {
      "@odata.etag": "\"{9B51EA38-3EE6-4DC1-96A6-230E325EF054},2\"",
      "name": "newFile.txt"
    }
  ]
}
```

## Traverse from one resource to another via relationship
A manager holds a **directReports** relationship with the other users reporting to him or her.
To query the list of the direct reports of a user, you can use the following HTTPS GET request to navigate to the intended target via relationship traversal.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/users/john.doe@contoso.com/directReports HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/users/john.doe@contoso.com/directReports' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

The successful response returns the 200 OK status and a payload, as shown.

```json
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
content-length: 152

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects/$entity",
    "@odata.type": "#microsoft.graph.user",
    "id": "c37b074d-fe9d-4e68-83ad-b4401d3be174",
    "department": "Sales & Marketing",
    "displayName": "Bonnie Kearney",

    ...
}
```

Similarly, you can follow a relationship to navigate to related resources.
For example, the user-messages relationship enables traversal from a Microsoft Entra user to a set of Outlook mail messages.
The following example shows how to do this in a REST API call.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/v1.0/me/messages HTTP/1.1
Authorization : Bearer {access_token}
```

# [cURL](#tab/curl)
```bash
curl --location --request GET 'https://graph.microsoft.com/v1.0/me/messages' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q'
```

---

The successful response returns the 200 OK status and a payload, as shown.


```json
HTTP/1.1 200 OK
content-type: application/json;odata.metadata=minimal
odata-version: 4.0
content-length: 147

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('john.doe%40contoso.com')/Messages",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$top=1&$skip=1",
  "value": [
    {
      "@odata.etag": "W/\"FwAAABYAAABMR67yw0CmT4x0kVgQUH/3AAJL+Kej\"",
      "id": "<id-value>",
      "createdDateTime": "2015-11-14T00:24:42Z",
      "lastModifiedDateTime": "2015-11-14T00:24:42Z",
      "changeKey": "FwAAABYAAABMR67yw0CmT4x0kVgQUH/3AAJL+Kej",
      "categories": [],
      "receivedDateTime": "2015-11-14T00:24:42Z",
      "sentDateTime": "2015-11-14T00:24:28Z",
      "hasAttachments": false,
      "subject": "Did you see last night's game?",
      "body": {
        "ContentType": "HTML",
        "Content": "<content>"
      },
      "BodyPreview": "it was great!",
      "Importance": "Normal",

       ...
    }
  ]
}
```
You can see all the relationships on a given resource by going to the metadata, finding the `EntityType`, and looking at each `NavigationProperty` for that `EntityType`.

## Call actions and functions
Microsoft Graph also supports _actions_ and _functions_ to manipulate resources in ways that are not simply create, read, update, and delete (CRUD) operations. They are often in the shape of HTTPS POST requests in order to intake arguments for the action or function. For example, the following action lets the signed-in user (`me`) send an email message.

# [HTTP](#tab/http)
```http
POST https://graph.microsoft.com/v1.0/me/sendMail HTTP/1.1
authorization: bearer {access_token}
content-type: application/json
content-length: 96

{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "garthf@contoso.com"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "microsoft.graph.fileAttachment",
        "name": "menu.txt",
        "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
      }
    ]
  },
  "saveToSentItems": "false"
}
```

# [cURL](#tab/curl)
```bash
curl --location --request POST 'https://graph.microsoft.com/v1.0/me/sendMail' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1Qi...8Q18N8vSgrd0Q' \
--data-raw '{
  "message": {
    "subject": "Meet for lunch?",
    "body": {
      "contentType": "Text",
      "content": "The new cafeteria is open."
    },
    "toRecipients": [
      {
        "emailAddress": {
          "address": "garthf@contoso.com"
        }
      }
    ],
    "attachments": [
      {
        "@odata.type": "microsoft.graph.fileAttachment",
        "name": "menu.txt",
        "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
      }
    ]
  },
  "saveToSentItems": "false"
}'
```

---

You can see all the functions that are available in the metadata. They appear as Functions or Actions.

## Use the Microsoft Graph SDKs

Like the power and ease of SDKs? While you can always use REST APIs to call Microsoft Graph, we also provide SDKs for many popular platforms. To explore the SDKs that are available, see [Code samples and SDKs](https://developer.microsoft.com/graph/code-samples-and-sdks).

## Related content

- [Use the Microsoft Graph API](use-the-api.md)
- [Get auth tokens](./auth/index.yml)
