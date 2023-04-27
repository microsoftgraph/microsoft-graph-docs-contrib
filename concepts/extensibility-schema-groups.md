---
title: "Add custom data to groups using schema extensions"
description: "Follow the steps in this article to register a schema extension definition, create a group with extended data, and update custom data in an existing group."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.prod: "extensions"
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 02/02/2023
---

# Add custom data to groups using schema extensions 

This article demonstrates how to use *schema extensions*.

Imagine you're a developer in a Learning Management Software company called "Graph Learn" that builds training courses and materials for businesses. You use the collaborative experience of Microsoft 365 groups to deliver course content and record exercises among participants for both online courses and instructor-led courses. You want to make the Microsoft 365 groups used for training courses easily identifiable as training courses, which will allow other developers to discover your groups and build rich experiences on top of your learning courses.

For this scenario, this article will show you how to:

1. View available schema extension definitions that you could use.
2. Register a schema extension definition that targets groups for training courses.
3. Create a new group with custom data based on the schema extension definition that you registered.
4. Add, update, or remove custom data in an existing group based on a schema extension definition.
5. Read a group and the extension data.

> [!NOTE]
> Apart from groups, schema extensions are also supported and can be managed for [other resource types](extensibility-overview.md#comparison-of-extension-types).

## 1. View available schema extensions

First, as a developer, you might want to find any other schema extension definitions that our app could reuse.

In the following example, you query the **schemaExtension** resource for a specific schema extension by its **id**.

Notice that the extension returned in the response has **Available** as the **status** value, which indicates that any app that has permission to the resources in the **targetTypes** property can use and update the extension
with additive changes. In general, this operation returns any schema extensions that satisfy the specified filter regardless of **status**, so do check the extension status before using it.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-get"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/schemaExtensions?$filter=id eq 'graphlearn_test'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schemaextensions-groups-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schemaextensions-groups-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/schemaextensions-groups-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schemaextensions-groups-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schemaextensions-groups-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schemaextensions-groups-get-powershell-snippets.md)]
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
    "value": [
        {
            "id":"graphlearn_test",
            "description": "Yet another test schema",
            "targetTypes": [
                "User", "Group"
            ],
            "status": "Available",
            "owner": "24d3b144-21ae-4080-943f-7067b395b913",
            "properties": [
                {
                    "name": "testName",
                    "type": "String"
                }
            ]
        }
    ]
}
```

## 2. Register a schema extension definition that describes a training course

If you can't find a schema extension that is appropriate for your needs, you can create and register a new extension definition for training courses on the **group** resource.  

When creating a schema extension definition, you should provide a string for the **id** property. Assuming you've verified your vanity domain `graphlearn.com`  with your tenant, you'll concatenate the verified domain name (`graphlearn`) with a name 
for the schema extension (`courses`), and assign **id** with the resultant string, `graphlearn_courses`. This **id** becomes the name of the schema extension property on a group. See an [example of the other way to assign **id** in the request](/graph/api/schemaextension-post-schemaextensions#request-2) that requires you to provide only a schema name.

Then, specify a description, target resources this extension applies to, and the custom properties that make up the schema.  In this example, specify the `courseId`, `courseName` and `courseType` custom properties and their types.

Notice that when you initially create a schema extension, its status is **InDevelopment**. While you're developing the extension, you can keep it in this status, during which only the app that created it can update it with additive changes or delete it. When you're ready to share the extension for use by other apps, set **status** to **Available**.

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
    "id":"graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
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
[!INCLUDE [sample-code](../includes/snippets/csharp/schemaextensions-groups-createextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schemaextensions-groups-createextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/schemaextensions-groups-createextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schemaextensions-groups-createextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schemaextensions-groups-createextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schemaextensions-groups-createextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "id": "graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "status": "InDevelopment",
    "owner": "24d3b144-21ae-4080-943f-7067b395b913",
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

## 3. Create a new group with extended data

The following request creates a new group and uses the `graphlearn_courses` schema extension to extend the group with custom data.

The response won't mirror back any data extensions. You need to explicitly `$select` the extension by name using a `GET /group/{id}` operation.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-createGroupWithExtension"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-type: application/json

{
    "displayName": "New Managers March 2017",
    "description": "New Managers training course for March 2017",
    "groupTypes": [
        "Unified"
    ],
    "mailEnabled": true,
    "mailNickname": "newMan201703",
    "securityEnabled": false,
    "graphlearn_courses": {
        "courseId": "123",
        "courseName": "New Managers",
        "courseType": "Online"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schemaextensions-groups-creategroupwithextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schemaextensions-groups-creategroupwithextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schemaextensions-groups-creategroupwithextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schemaextensions-groups-creategroupwithextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schemaextensions-groups-creategroupwithextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "id": "dfc8016f-db97-4c47-a582-49cb8f849355",
    "createdDateTime": "2017-02-09T00:17:05Z",
    "description": "New Managers training course for March 2017",
    "displayName": "New Managers March 2017",
    "groupTypes": [
        "Unified"
    ],
    "mail": "newMan201703@graphlearn.com",
    "mailEnabled": true,
    "mailNickname": "newMan201703",
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```

## 4. Add, update, or remove custom data in an existing group

You can now extend and add custom data to the group you created by updating the `graphlearn_courses` complex type as follows.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-updateGroupWithExtension"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/groups/dfc8016f-db97-4c47-a582-49cb8f849355
Content-type: application/json

{
    "graphlearn_courses": {
        "courseId": "123",
        "courseName": "New Managers",
        "courseType": "Online"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schemaextensions-groups-updategroupwithextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schemaextensions-groups-updategroupwithextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schemaextensions-groups-updategroupwithextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schemaextensions-groups-updategroupwithextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schemaextensions-groups-updategroupwithextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

If you want to update the values of the extension data, put the entire extension complex type in the body of a `PATCH` request (similar to adding custom data to an existing resource).

To remove custom data added to a resource instance, but keep the schema extension property on the resource instance, set the corresponding extension property to `null`.

To remove a schema extension from a resource instance, set the extension complex type in that instance to `null`.

## 5. Get a group and its extension data

A handy way to look for a group (or groups) is to use `$filter` to match for specific extension property values,
such as an extension name or ID.

Then, to get the custom data in a group, use `$select` to include the extension by name (in this case by `graphlearn_courses`).

The following example looks for the group that has the `graphlearn_courses` extension with a `courseId` property value matching `123`, and gets the group properties **displayName**, **id**, and **description**, and the custom data in the `graphlearn_courses` extension.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schemaextensions-groups-getGroupSelectExtension"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups?$filter=graphlearn_courses/courseId eq '123'&$select=displayName,id,description,graphlearn_courses
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schemaextensions-groups-getgroupselectextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schemaextensions-groups-getgroupselectextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/schemaextensions-groups-getgroupselectextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schemaextensions-groups-getgroupselectextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schemaextensions-groups-getgroupselectextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schemaextensions-groups-getgroupselectextension-powershell-snippets.md)]
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
    "value": [
        {
            "displayName": "New Managers March 2017",
            "id": "14429ae5-3e74-41a2-9fa8-028fbb984637",
            "description": "New Managers training course for March 2017",
            "graphlearn_courses": {
                "@odata.type": "#microsoft.graph.ComplexExtensionValue",
                "courseId": "123",
                "courseName": "New Managers",
                "courseType": "Online"
            }
        }
    ]
}
```

## See also

- [Add custom data to resources using extensions](extensibility-overview.md)
- [Add custom data to users using open extensions (preview)](extensibility-open-users.md)
- [schemaExtension resource type](/graph/api/resources/schemaextension)
