---
title: "Add custom data to groups using schema extensions"
description: "Learn how to register a schema extension definition, extend a group with the schema extension, and update custom data in the schema extension for the group."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.subservice: extensions
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.topic: tutorial
ms.date: 01/25/2024
#Customer intent: As a developer, I want to learn how to store lightweight data to Microsoft Entra groups through Microsoft Graph, and avoid using an external database system.
---

# Add custom data to groups using schema extensions 

In this tutorial, you learn how to use [schema extensions](/graph/api/resources/schemaextension).

Imagine you're a developer in a Learning Management Software company called **Bellows College** that builds training courses and materials for businesses. You use the collaborative experience of Microsoft 365 groups to deliver course content and record exercises among participants for both online courses and instructor-led courses. You want to make the Microsoft 365 groups used for training courses easily identifiable as training courses, which allows other developers to discover your groups and build rich experiences on top of your learning courses.

For this scenario, this article shows you how to:

> [!div class="checklist"]
>
> - Discover available schema extension definitions that you could use.
> - Register a schema extension definition that targets groups for training courses.
> - Create a new group with custom data based on the schema extension definition that you registered.
> - Add, update, or remove custom data in an existing group based on a schema extension definition.
> - Read a group and the extension data.
> - Delete the schema extension definition and the extension data.

> [!NOTE]
> Apart from groups, schema extensions are also supported and can be managed for [other resource types](extensibility-overview.md#comparison-of-extension-types).

## Prerequisites

To reproduce the steps in this article, you need the following privileges:

- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge).
- Grant the app the *Group.ReadWrite.All* and *Application.ReadWrite.All* delegated permissions for the signed-in user.
- Be the owner of an application that you assign ownership of the schema extension definition in this tutorial. In this tutorial, the application is named *extensions-application* and has **appId** `d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2`.

## Step 1. View available schema extensions

First, as a developer, you might want the app to reuse any existing schema extension definitions if they're fit for purpose. In the following example, you query schema extensions that are named (by the **id**) `bellowscollege_courses`. Assume that the response shows there are no schema extensions that are named `bellowscollege_courses` in your tenant.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/schemaExtensions?$filter=id eq 'bellowscollege_courses'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-get-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#schemaExtensions",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET schemaExtensions?$select=description,owner",
    "value": []
}
```

You can also query by the **id** as a path parameter as follows: `GET https://graph.microsoft.com/v1.0/schemaExtensions/bellowscollege_courses`. If there are no schema extensions that match the ID, the response is `404 Not Found`.

## Step 2. Register a schema extension definition

You want to create and register a new extension definition for training courses on the **group** resource. Specify the following properties:

- **id**: Provide a string for this property following one of two ways:
  - Option 1: Concatenate a *verified* vanity domain name for your tenant with a name for the schema extension. For example, if the domain is `bellowscollege.com`, and the name of the schema extension is `courses`, then you can use the **id** `bellowscollege_courses`. 
  - Option 2: An alternative way is to provide only a schema name, such as `courses`, and let Microsoft Graph automatically generate the **id** for you by prefixing the provided name with a random alphanumeric string.

    This **id** becomes the name of the schema extension property on a group.
- **description**
- **targetTypes**: Specify the resource types that the schema extension can be applied to. In this example, the resource type is `Group`. You can add more resource types by updating the schema extension definition later.
- **properties**: Specify the custom properties that make up the schema. In this example, specify the `courseId`, `courseName` and `courseType` custom properties and their types. Only additive changes are permitted after you create the schema extension definition.
- **owner**: Specify the application that owns the schema extension definition. If you're running this example from an app that you're not assigned as owner, specify the **appId** of the application that you're assigned in the **owner** property.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-createExtension"
}-->
```http
POST https://graph.microsoft.com/v1.0/schemaExtensions
Content-type: application/json

{
    "id": "bellowscollege_courses",
    "description": "Bellows College training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "owner": "d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-createextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-createextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-createextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-createextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-createextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-createextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-createextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-createextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

In the response, the default initial status of the schema extension is `InDevelopment`. While you're developing the extension, you can keep it in this status, during which only the app that created it can update it with additive changes or delete it. When you're ready to share the extension for use by other apps, set **status** to **Available**.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#schemaExtensions/$entity",
    "id": "bellowscollege_courses",
    "description": "Bellows College training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "status": "InDevelopment",
    "owner": "d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

## Step 3. Extend a group with custom data

You can extend a group with custom data either during group creation or by updating an existing group.

### Option 1: Create a new group with extended data

The following request creates a new group and uses the `bellowscollege_courses` schema extension to extend the group with custom data. If you have an existing group, you can also extend it with custom data by updating the group with the extension data.

The response doesn't mirror back any data extensions. You need to explicitly `$select` the extension by name using a `GET /group/{id}` operation.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-createGroupWithExtension"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-type: application/json

{
    "displayName": "New Managers March 2024",
    "description": "New Managers training course for March 2024",
    "groupTypes": [
        "Unified"
    ],
    "mailEnabled": true,
    "mailNickname": "newMan202403",
    "securityEnabled": false,
    "bellowscollege_courses": {
        "courseId": "123",
        "courseName": "New Managers",
        "courseType": "Online"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-creategroupwithextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-creategroupwithextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-creategroupwithextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-creategroupwithextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-creategroupwithextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-creategroupwithextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-creategroupwithextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-creategroupwithextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The response doesn't include the new extension. You need to explicitly `$select` the extension by name using a `GET /group/{id}` operation.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "id": "8fb45944-4085-449f-b95d-f7dd74a1b081",
    "createdDateTime": "2024-01-24T09:09:03Z",
    "description": "New Managers training course for March 2024",
    "displayName": "New Managers March 2024",
    "groupTypes": [
        "Unified"
    ],
    "mail": "newMan202403@bellowscollege.com",
    "mailEnabled": true,
    "mailNickname": "newMan202403"
}
```

### Option 2: Update an existing group with extended data

If you have an existing group, you can also extend it with custom data as follows. The request returns a `204 No Content` response.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-updateGroupWithExtension"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/dfc8016f-db97-4c47-a582-49cb8f849355
Content-type: application/json

{
    "bellowscollege_courses": {
        "courseId": "123",
        "courseName": "New Managers",
        "courseType": "Online"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-updategroupwithextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-updategroupwithextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-updategroupwithextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-updategroupwithextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-updategroupwithextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-updategroupwithextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-updategroupwithextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-updategroupwithextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 4. Update custom data in a group

The following request updates the **courseType** property in the `bellowscollege_courses` extension for the group to `Hybrid`. Though you want to update only the **courseType** property, you must include the other properties and their existing values in the request body as well. Otherwise, Microsoft Graph sets them to `null` and removes their data.

The following request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-updateExtensionDataInGroup"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/dfc8016f-db97-4c47-a582-49cb8f849355
Content-type: application/json

{
    "bellowscollege_courses": {
        "courseId": "123",
        "courseName": "New Managers",
        "courseType": "Hybrid"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-updateextensiondataingroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-updateextensiondataingroup-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-updateextensiondataingroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-updateextensiondataingroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-updateextensiondataingroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-updateextensiondataingroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-updateextensiondataingroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-updateextensiondataingroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Step 5. Get a group and its extension data

To get the custom data in a group, use `$select` to include the extension by name.

Apart from filtering by the **id** of the schema extension, you can also filter by the extension property values. The following example looks for the group that has the `bellowscollege_courses` extension with a `courseId` property value matching `123`, and gets the extension data and the **displayName**, **id**, and **description** properties of the group.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-getGroupSelectExtension"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups?$filter=bellowscollege_courses/courseId eq '123'&$select=displayName,id,description,bellowscollege_courses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-getgroupselectextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-getgroupselectextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-getgroupselectextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-getgroupselectextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-getgroupselectextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-getgroupselectextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-getgroupselectextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-getgroupselectextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups(displayName,id,description,bellowscollege_courses)",
    "value": [
        {
            "displayName": "New Managers March 2024",
            "id": "8fb45944-4085-449f-b95d-f7dd74a1b081",
            "description": "New Managers training course for March 2024",
            "bellowscollege_courses": {
                "@odata.type": "#microsoft.graph.ComplexExtensionValue",
                "courseType": "Hybrid",
                "courseName": "New Managers",
                "courseId": 123
            }
        }
    ]
}
```

## Step 6: Delete extension data and schema extension definition

You can delete a schema extension definition if you no longer need it. If resource instances have the extension property applied, deleting the schema extension definition doesn't delete the extension data in the resource instances. Instead, the extension data is available but no longer accessible. You can recreate the schema extension definition with the same configuration - if you used the verified domain for the schema extension **id** - to be able to delete the extension data.

The following request deletes the `bellowscollege_courses` schema extension property and its associated data from the group. The request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-deleteExtensionProperty"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/8fb45944-4085-449f-b95d-f7dd74a1b081

{
    "bellowscollege_courses": null
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-deleteextensionproperty-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-deleteextensionproperty-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-deleteextensionproperty-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-deleteextensionproperty-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-deleteextensionproperty-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-deleteextensionproperty-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-deleteextensionproperty-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-deleteextensionproperty-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following request deletes the `bellowscollege_courses` schema extension definition. The request returns a `204 No Content` response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-deleteExtensionDefinition"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/schemaExtensions/bellowscollege_courses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/schemaextensions-groups-deleteextensiondefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/schemaextensions-groups-deleteextensiondefinition-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/schemaextensions-groups-deleteextensiondefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/schemaextensions-groups-deleteextensiondefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/schemaextensions-groups-deleteextensiondefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/schemaextensions-groups-deleteextensiondefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/schemaextensions-groups-deleteextensiondefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/schemaextensions-groups-deleteextensiondefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Related content

- [Add custom data to resources using extensions](extensibility-overview.md)
- [Add custom data to users using open extensions (preview)](extensibility-open-users.md)
- [schemaExtension resource type](/graph/api/resources/schemaextension)
